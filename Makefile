all: beanstalkd-1.10

beanstalkd-1.10:
	docker build --tag foobox/beanstalkd:1.10 1.10
