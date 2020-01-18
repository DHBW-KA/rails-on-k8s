FROM ruby
RUN mkdir /app && gem install bundler && \
   curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
   curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
   echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
   apt-get update && apt-get install -y build-essential nodejs yarn && \
   rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY Gemfile* package.json yarn.lock /app/
RUN bundle install
RUN yarn install
COPY . /app

CMD ["bundle", "exec", "puma", "-c", "config/puma.rb"]