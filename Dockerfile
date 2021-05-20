FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
WORKDIR /chinchilla-food
COPY Gemfile /chinchilla-food/Gemfile
COPY Gemfile.lock /chinchilla-food/Gemfile.lock
RUN bundle install
COPY . /chinchilla-food

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]
