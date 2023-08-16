# syntax=docker/dockerfile:1
FROM node:12-alpine
RUN apk add --no-cache python2=latest g++=latest make=latest
WORKDIR /app
COPY . .
RUN yarn install --production \
&& yarn cache clean
CMD ["node", "src/index.js"]
