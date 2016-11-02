FROM node:4.5.0-wheezy

MAINTAINER Xavier HERRIOT

RUN apt-get update \
  && apt-get install -y curl

COPY ./install.sh /root/install.sh
COPY ./python.sh /root/python.sh

RUN cd /root \
  && sh install.sh \
  && mkdir /root/.ssh \
  && chmod 700 /root/.ssh \
  && bash python.sh

VOLUME /app
WORKDIR /app
EXPOSE 3000
CMD [ "meteor" ]
