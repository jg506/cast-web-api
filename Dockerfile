FROM node
WORKDIR /cast-web-api
RUN git clone https://github.com/vervallsweg/cast-web-api.git . && npm install
EXPOSE 3000
CMD ["node","/cast-web-api/castWebApi.js","--hostname=0.0.0.0"]
