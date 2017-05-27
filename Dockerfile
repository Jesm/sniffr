FROM ruby:2.4

WORKDIR /usr/src/app

COPY Gemfile* /usr/src/app/

RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -
RUN apt-get update \
    && apt-get install -y nodejs

RUN bundle install

EXPOSE 3000

CMD ["bin/rails","server"]
