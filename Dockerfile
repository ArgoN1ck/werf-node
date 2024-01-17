FROM node:18-alpine as builder
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm i --force 
COPY . .
RUN npm run build

FROM node:18-alpine
WORKDIR /usr/src/app
COPY --from=builder /usr/src/app/ /usr/src/app/
EXPOSE 3000
STOPSIGNAL SIGINT
ENTRYPOINT [ "sh", "-c", "node dist/main.js" ]