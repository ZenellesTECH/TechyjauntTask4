FROM node:20.16.0

WORKDIR  /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm install

EXPOSE 5000

CMD [ "node", "app.js" ]