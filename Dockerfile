FROM alpine:3.18.4

RUN apk update
RUN apk add nodejs npm

RUN npm install -g json-server

WORKDIR /data

CMD json-server --host 0.0.0.0 --port 3000 --watch db.json