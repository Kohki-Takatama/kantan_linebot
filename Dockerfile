FROM ruby:3.1.4
RUN apt-get update -qq
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs
RUN npm install --global yarn

WORKDIR /linebot
RUN gem install bundler:2.3.17
COPY Gemfile Gemfile.lock /linebot/
RUN bundle install
