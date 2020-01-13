FROM node:10-alpine

WORKDIR /usr/app

COPY package*.json ./

RUN npm install

EXPOSE 3000

COPY . .

RUN npm run build

CMD ["npm", "run", "start:prod"]
