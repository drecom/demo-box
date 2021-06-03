FROM ruby:2.7-slim
WORKDIR /app

COPY ./ ./
RUN bundle config --local set path 'vendor/bundle' \
 && bundle install

CMD bundle exec ruby app.rb