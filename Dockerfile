FROM ubuntu
RUN apt-get update && apt-get install -y curl

# Install Node
ENV NODE_VERSION 8.9.4
RUN cd /var/tmp && \
  curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz" && \
  tar -xzf "node-v$NODE_VERSION-linux-x64.tar.gz" -C /usr/local --strip-components=1 && \
  rm "node-v$NODE_VERSION-linux-x64.tar.gz"

ADD . /
ARG MY_ENV_VAR
RUN /bin/bash -c 'npm start'
