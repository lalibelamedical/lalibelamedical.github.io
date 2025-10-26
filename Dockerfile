FROM jekyll/jekyll:4.2.0 AS builder

WORKDIR /srv/jekyll
COPY Gemfile.lock .
COPY Gemfile .

RUN bundle install

FROM builder

CMD [ "jekyll", "build" ]