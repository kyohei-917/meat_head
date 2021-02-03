# ベースとなるイメージを指定
FROM ruby:2.7.2

# RUN: docker buildするときに実行
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qq && apt-get install -y nodejs mariadb-client yarn
RUN mkdir /catabolic_alert
# WORKDIR 作業ディレクトリの指定
WORKDIR /meat_head
COPY Gemfile /meat_head/Gemfile
COPY Gemfile.lock /meat_head/Gemfile.lock
RUN bundle install
COPY . /meat_head

# コンテナが起動するたびに実行されるスクリプトを追加
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
# コンテナ起動時のポートを設定する
EXPOSE 3000

# CMD: docker runするときに実行される
CMD ["rails", "server", "-b", "0.0.0.0"]