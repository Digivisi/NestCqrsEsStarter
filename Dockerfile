FROM node:10.18.0-alpine

WORKDIR /usr/app

COPY package*.json ./

RUN npm install

EXPOSE 3000

COPY . .

CMD ["npm", "run", "start:dev"]
