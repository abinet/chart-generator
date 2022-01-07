FROM node:14.18.1-bullseye-slim as node

RUN apt-get update && apt-get install -y bzip2 libfontconfig

#WORKDIR /usr/scr/app

#COPY ./package.json ./

#RUN npm install -g phantomjs --unsafe-perm
ENV ACCEPT_HIGHCHARTS_LICENSE="y"
ENV HIGHCHARTS_VERSION="8.2.0"
RUN npm install highcharts-export-server
#RUN npm installphantomjs -g --unsafe-

COPY ./test.js ./

#RUN npm run build

#CMD ["npm", "run", "start"]