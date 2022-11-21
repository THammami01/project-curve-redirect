FROM node:16.17-alpine

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn

COPY . .

EXPOSE 5000

CMD ["yarn", "start"]
