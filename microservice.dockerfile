FROM node:10.14.2-alpine
WORKDIR /app
COPY package.json package-lock.json index.js ./
COPY ./lib ./lib/
RUN apk update && apk add alpine-sdk python
RUN npm install --production
EXPOSE 8001
ENTRYPOINT ["node", "index.js"]