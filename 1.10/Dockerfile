FROM foobox/common:latest
LABEL maintainer="andreas.treichel@twofour.de"
EXPOSE 11300

ENV BEANSTALKD_PORT=11300
ENV BEANSTALKD_BINLOG_PATH=/var/lib/beanstalkd/binlog
ENV BEANSTALKD_BINLOG_INTERVAL=1000

COPY content /
RUN beanstalkd-setup

ENTRYPOINT ["beanstalkd-entrypoint"]

USER beanstalk
CMD ["beanstalkd"]
