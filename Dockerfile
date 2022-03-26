FROM node:17.7.2-alpine as generator
WORKDIR /app/src
COPY ./package.json ./node_modules /app/src/
RUN npm install
COPY . /app/src

FROM generator as builder
WORKDIR /app/src
RUN npm run build

FROM nginx:1.13.6
WORKDIR /usr/share/nginx/html
COPY --from=builder /app/src/dist .
EXPOSE 80