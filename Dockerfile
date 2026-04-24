FROM node:20-alpine

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm ci --omit=dev

COPY src ./src

EXPOSE 3000

CMD ["node", "src/server.js"]


FROM jenkins/jenkins:lts-jdk17

USER root



RUN apt-get update
RUN apt-get install -y nodejs npm

