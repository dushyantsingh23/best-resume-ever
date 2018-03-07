FROM node:alpine
MAINTAINER Dushyant Singh

COPY package.json /
RUN npm install
COPY . /

EXPOSE 80

CMD npm run dev
