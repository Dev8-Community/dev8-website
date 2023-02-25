FROM node:18.14.2-alpine
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN npm install
CMD DEBUG=api:* npm start
