FROM node:18.14.2-alpine
WORKDIR /usr/src/app
COPY ./package.json /usr/src/app/package.json
COPY ./package-lock.json /usr/src/app/package-lock.json
RUN npm install
COPY . /usr/src/app
CMD npm run serve
