FROM ruby:3.0.2 as builder

WORKDIR /srv/docs

ADD . /srv/docs

RUN bundle install --jobs 4 && \
    JEKYLL_ENV=production bundle exec jekyll build && \
    tar -czf /tmp/docs.tar.gz -C _site \
      --exclude=*.un~ \
      --exclude=.DS_Store \
      --exclude=api_specification.json \
      --exclude=LICENSE --exclude=README .


FROM nginx:1.21.1

WORKDIR /srv/docs

ADD docker/docs.conf /etc/nginx/conf.d/docs.conf

COPY --from=builder /tmp/docs.tar.gz /tmp/docs.tar.gz

RUN tar xzf /tmp/docs.tar.gz -C /srv/docs && \
    chown -R nginx:www-data /srv/docs && \
    rm /etc/nginx/conf.d/default.conf
