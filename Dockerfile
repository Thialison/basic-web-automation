FROM ruby:2.6.4

ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

RUN apt-get update \
    && apt-get -y --no-install-recommends install locales unzip xvfb qt5-default libqt5webkit5-dev \
    gstreamer1.0-plugins-base gstreamer1.0-tools gstreamer1.0-x freetds-dev libnss3 libxi6 libgconf-2-4 \
    && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen \
    && dpkg-reconfigure --frontend=noninteractive locales \
    && update-locale \
    && wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
    && dpkg -i google-chrome-stable_current_amd64.deb; apt-get -fy install \
    && rm -rf /var/lib/apt/lists/*

RUN wget https://chromedriver.storage.googleapis.com/76.0.3809.126/chromedriver_linux64.zip \
    && unzip chromedriver_linux64.zip \
    && mv chromedriver /usr/local/bin/

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8

WORKDIR /app/
COPY . /app/

RUN gem install bundle \
    && bundle install