FROM ruby:2.6.0

WORKDIR /app
COPY . /app

RUN apt-get update
RUN gem install rails
RUN apt-get install nodejs -y
RUN bundle install

RUN rails db:migrate
CMD ["rails", "s", "-b", "0.0.0.0" ]