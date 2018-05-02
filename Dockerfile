FROM jekyll/jekyll:3.4.0

ADD Gemfile /srv/jekyll
ADD Gemfile.lock /srv/jekyll
RUN bundle install

EXPOSE 4000

CMD jekyll serve