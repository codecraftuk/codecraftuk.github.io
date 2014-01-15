module CodeCraft
  class App < Sinatra::Base

    configure do
      set :public_folder, Proc.new { File.join(root, "static") }
      Compass.add_project_configuration(File.join(root, 'config', 'compass.rb'))
    end

    get "/events/?*" do
        poole_blog(request.path) {404}
    end

    get "/tmp" do
      file_path = File.join(File.dirname(__FILE__), 'poole/_site/front.html')
      serve_data(file_path)
    end


    def poole_blog(path, &missing_file_block)
        @current_menu = "poole"
        @title = "CodeCraft"
      
        file_path = File.join(File.dirname(__FILE__), 'poole/_site',  path.gsub('/events',''))
        file_path = File.join(file_path, 'index.html') unless file_path =~ /\.[a-z]+$/i  
      
        serve_data(file_path)
    end

    def serve_data(file_path)
      if File.exist?(file_path)
          file = File.open(file_path, "rb")
          contents = file.read
          file.close
      
          if (file_path.include?('.xml') || file_path.include?('.css'))
            erb contents, :content_type => 'text/xml'
          else
            erb contents
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
