#DOCKER NODE BY -BETA-
#Thanks to all teaching

FROM node:latest
MAINTAINER Panel Software, <diyan281118@gmail.com>

RUN apt update \
  && apt install -y \
  build-essential \
  python3 python3-dev python-is-python3 \
  coreutils \
  ca-certificates \
  dnsutils \
  zip \
  imagemagick \
  iproute2 \
  git \
  sqlite3 \
  libsqlite3-dev \
  webp \
  unzip \
  curl \
  wget \
  libsox-fmt-all \
  sox \
  neofetch \
  libgconf-2-4 libatk1.0-0 libatk-bridge2.0-0 libgdk-pixbuf2.0-0 libgtk-3-0 libgbm-dev libnss3-dev libxss-dev \
  libsqlite3-dev \
  libcairo2-dev \
  libpango1.0-dev \
  libjpeg-dev \
  libgif-dev \
  librsvg2-dev \
  ffmpeg \
  golang-go \
  figlet \
  toilet \
  tesseract-ocr \
  chromium \
  tzdata \
  tar \
  yarn \
  libtool \
  jq \ 
  file make \
  gcc \
  g++ \
  && npm install -g deobfuscator@2.4.1 \
  && adduser --disabled-password --home /home/container container

RUN npm i -g npm@latest
RUN npm i -g puppeteer@19.7.4
RUN npm i -g pm2 nodemon pnpm ts-node
RUN npm i -g cfonts canvas
RUN wget https://install.speedtest.net/app/cli/ookla-speedtest-1.1.1-linux-x86_64.tgz && tar zxvf ookla-speedtest-1.1.1-linux-x86_64.tgz && mv speedtest /usr/bin

USER container
ENV  USER=container HOME=/home/container
WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh
CMD ["/bin/bash", "/entrypoint.sh"]
