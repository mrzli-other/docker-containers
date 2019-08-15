FROM fluent/fluentd:v1.6.3-debian-1.0

COPY files/fluent.conf /fluentd/etc/fluent.conf
