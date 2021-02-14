FROM alpine:latest

WORKDIR /workspace

RUN mkdir public/js -p && \
    touch ./public/index.html && \
    mkdir src && \
    touch ./src/main.ts && \
    apk update && \
    apk --update --no-cache add curl git nodejs npm && \
    git init && \
    npm init -y && \
    npm i webpack webpack-cli typescript ts-loader style-loader css-loader postcss-loader postcss-nested autoprefixer prettier eslint express --save-dev

ENV PATH $PATH:./node_modules/.bin

ADD tsconfig.json /workspace
ADD webpack.config.js /workspace
ADD postcss.config.js /workspace
