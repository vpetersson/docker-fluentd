FROM rails

RUN \
  gem install fluentd fluent-plugin-mongo bson_ext && \
  fluent-gem install fluent-plugin-mongo && \
  gem cleanup
ADD fluent.conf /etc/fluent/fluent.conf
CMD fluentd
