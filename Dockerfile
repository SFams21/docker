#DOCKER NODE BY -BETA-
#Thanks to all teaching

FROM node:latest
MAINTAINER Panel Software, <riyandbreaks331@gmail.com>

RUN apt-get update && \
  apt-get install -y \
  python3 \
  python-is-python3 \
  coreutils \
  zip \
  imagemagick \
  webp \
  unzip \
  curl \
  nodejs \
  wget \
  libsox-fmt-all \
  sox \
  neofetch \
  build-essential \
  libcairo2-dev \
  libpango1.0-dev \
  libjpeg-dev \
  libgif-dev \
  librsvg2-dev \
  ffmpeg \
  golang-go \
  figlet \
  toilet \
  chromium \
  && adduser --disabled-password --home /home/container container

RUN npm i -g npm@latest
RUN npm i -g pm2 nodemon pnpm ts-node
RUN wget https://install.speedtest.net/app/cli/ookla-speedtest-1.1.1-linux-x86_64.tgz && tar zxvf ookla-speedtest-1.1.1-linux-x86_64.tgz && mv speedtest /usr/bin

USER container
ENV  USER=container HOME=/home/container
WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh
CMD ["/bin/bash", "/entrypoint.sh"]
