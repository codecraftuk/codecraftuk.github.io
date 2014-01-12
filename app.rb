module CodeCraft
  class App < Sinatra::Base

    configure do
      set :public_folder, Proc.new { File.join(root, "static") }
      Compass.add_project_configuration(File.join(root, 'config', 'compass.rb'))
    end

    get "/events/?*" do
        jekyll_blog(request.path) {404}
    end

    def jekyll_blog(path, &missing_file_block)
        @current_menu = "blog"
        @title = "Blog - Derek Eder"
      
        file_path = File.join(File.dirname(__FILE__), 'blog/_site',  path.gsub('/events',''))
        file_path = File.join(file_path, 'index.html') unless file_path =~ /\.[a-z]+$/i  
      
        if File.exist?(file_path)
          file = File.open(file_path, "rb")
          contents = file.read
          file.close
      
          if (file_path.include?('.xml') || file_path.include?('.css'))
            erb contents, :content_type => 'text/xml'
          else
            erb contents #, :layout_engine => :haml
          end
        else
          haml :not_found
        end
    end

    get '/' do
      erb :index
    end

    get '/stylesheets/:name.css' do
      content_type 'text/css', :charset => 'utf-8'
      scss(:"stylesheets/#{params[:name]}", Compass.sass_engine_options )
    end

  end
end
