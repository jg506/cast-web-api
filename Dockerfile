FROM node:alpine
WORKDIR /cast-web-api
RUN apk add --update git && \
  rm -rf /tmp/* /var/cache/apk/*
RUN git clone https://github.com/vervallsweg/cast-web-api.git . && \
  npm install
EXPOSE 3003
CMD ["node","/cast-web-api/castWebApi.js","--hostname=10.0.1.198", "--port=3003"]
