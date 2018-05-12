FROM node:8-alpine

RUN mkdir /application \
    && chown -R node:node /application \
    && npm install -g vue-cli firebase-tools

USER node

WORKDIR /application