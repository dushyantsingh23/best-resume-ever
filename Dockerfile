FROM node:alpine
MAINTAINER Dushyant Singh

COPY package.json /
RUN npm install
COPY . /

EXPOSE 8080

CMD npm run dev
