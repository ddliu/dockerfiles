FROM ubuntu:14.04
MAINTAINER Liu Dong <ddliuhb@gmail.com>

RUN apt-get update && \
    apt-get install -y \
    beanstalkd && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN mkdir /data
CMD beanstalkd -p 11300 -b /data
EXPOSE 11300