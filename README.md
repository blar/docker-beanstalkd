# Beanstalk Message Queue für Docker

## Umgebungsvariablen

Standardwert: 11300

### BEANSTALKD_BINLOG_PATH

Pfad in der die Jobs gespeichert werden. Unter diesem Pfad sollte ein Docker-Volume gemountet sein, um die Jobs nach
einem Neustart des Containers wiederherzustellen.  

Standardwert: /var/lib/beanstalkd/binlog

### BEANSTALKD_BINLOG_INTERVAL

Interval in Millisekunden in dem die Jobs in ``BEANSTALKD_BINLOG_PATH` gespeichert werden.

Standardwert: 60000
