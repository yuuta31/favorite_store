FROM ruby:2.5.1

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN apt-get update -qq && apt-get install -y vim build-essential libpq-dev

RUN apt-get update && apt-get install -y curl apt-transport-https wget && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install -y yarn

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
    apt-get install nodejs

RUN mkdir /myproject
WORKDIR /myproject

# ホストのGemfileとGemfile.lockをコンテナにコピー
ADD Gemfile /myproject/Gemfile
ADD Gemfile.lock /myproject/Gemfile.lock

# bundle installの実行
RUN bundle install

# ホストのアプリケーションディレクトリ内をすべてコンテナにコピー
ADD . /myproject

# puma.sockを配置するディレクトリを作成
RUN mkdir -p tmp/sockets
