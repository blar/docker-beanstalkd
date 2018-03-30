FROM alpine:3.7
LABEL maintainer="gmblar+github@gmail.com"
EXPOSE 11300

ENV BEANSTALKD_BINLOG_PATH=/var/lib/beanstalkd/binlog
ENV BEANSTALKD_BINLOG_INTERVAL=1000

COPY src /
RUN beanstalkd-setup

ENTRYPOINT ["beanstalkd-entrypoint"]

USER beanstalk
CMD ["beanstalkd"]
