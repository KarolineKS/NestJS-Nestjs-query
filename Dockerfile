FROM node:16-alpine AS development

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn install

COPY . .

CMD ["yarn", "start:dev"]