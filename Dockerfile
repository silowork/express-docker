FROM node:24.2-alpine3.22

WORKDIR /app

COPY . .

RUN npm install


EXPOSE 3000

CMD [ "node","app.js" ]
