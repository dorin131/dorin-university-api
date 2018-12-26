FROM node:10

ADD src /srv/src
ADD config /srv/config
ADD tests /srv/tests

COPY package*.json /srv/
COPY tsconfig.json /srv/
COPY nodemon.json /srv/

WORKDIR /srv

RUN npm i

EXPOSE 8081

ENTRYPOINT npm run start-$environment