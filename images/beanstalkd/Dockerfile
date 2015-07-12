FROM debian:wheezy

RUN apt-get update && apt-get install -y beanstalkd

ADD beanstalkd.conf /etc/default/beanstalkd

CMD ["beanstalkd", "-p", "11300"]

EXPOSE 11300
