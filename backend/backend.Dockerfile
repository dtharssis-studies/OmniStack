FROM node:12.16.1

RUN apt-get update && apt-get upgrade -y

# TDD
RUN npx jest --inti

RUN npm install cross-env