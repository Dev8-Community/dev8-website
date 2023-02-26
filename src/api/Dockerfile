FROM node:18.14.2-alpine
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN npm install
RUN npm run build
CMD DEBUG=api:* npm run dev
