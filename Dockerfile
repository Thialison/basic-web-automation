FROM nbulai/ruby-chromedriver

RUN apt-get update \
    && apt-get -y install vim sudo

WORKDIR /app/
COPY . /app/

RUN gem install bundle \
    && bundle install