FROM node:8-alpine

EXPOSE 8080

RUN mkdir /application \
    && chown -R node:node /application \
    && npm install -g vue-cli firebase-tools

USER node

WORKDIR /application
CMD ["npm", "run", "dev"]