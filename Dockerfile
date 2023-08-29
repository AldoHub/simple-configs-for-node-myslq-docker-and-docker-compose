#builds the docker image config that will be used on the docker-compose file

FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 3000

VOLUME [ "/app/node_modules" ]

CMD ["npm", "run", "dev"]