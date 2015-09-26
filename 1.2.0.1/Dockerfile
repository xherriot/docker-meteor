FROM node:0.10.40-slim

MAINTAINER Xavier HERRIOT

COPY install.sh /tmp/install-meteor.sh
RUN apt-get update \
  && apt-get install -y curl \
  && sh /tmp/install-meteor.sh

VOLUME /app
WORKDIR /app
EXPOSE 3000
CMD [ "meteor" ]