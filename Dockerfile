FROM node:10-alpine

RUN mkdir -p /home/node/app/ && chown -R node:node /home/node/app

COPY package*.json ./

WORKDIR /home/node/app/

RUN npm install

USER node

EXPOSE 8080

COPY --chown=node:node . .

CMD ["node", "app.js"]

