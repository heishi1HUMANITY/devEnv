FROM ubuntu:20.04

WORKDIR /workspace
RUN mkdir public
RUN mkdir src

RUN apt update
RUN apt full-upgrade -y
RUN apt install software-properties-common -y
RUN add-apt-repository ppa:git-core/ppa -y
RUN apt update

RUN apt install curl -y

RUN apt install git -y

RUN apt install nodejs npm -y
RUN npm i -g n
RUN n stable
RUN apt purge nodejs npm -y
RUN apt autoremove -y

RUN npm init -y
RUN npm i -g webpack webpack-cli 
RUN npm i typescript ts-loader style-loader css-loader sass sass-loader node-sass --save-dev

ADD tsconfig.json /workspace
ADD webpack.config.js /workspace