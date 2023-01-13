# syntax=docker/dockerfile:1
FROM ruby:2.7

RUN apt-get update -qq
RUN apt-get install -y vim 
# RUN apt-get install -y nodejs mariadb-server
 
WORKDIR /<YOUR_ROOT_DIRECTORY>
COPY Gemfile /<YOUR_ROOT_DIRECTORY>/Gemfile
RUN bundle install

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 8888

# Configure the main process to run when running the image
# CMD ["rails", "server", "-b", "0.0.0.0"]
