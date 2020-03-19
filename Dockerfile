### STAGE 1: Build ###
FROM node:12.7-alpine AS build
WORKDIR /usr/src/app
COPY package.json ./
ENV NG_CLI_ANALYTICS=false
RUN npm install
COPY . .
RUN npm run build

### STAGE 2: RUN ###
FROM nginx:1.17.1-alpine
COPY --from=build /usr/src/app/dist/angular-web-app /usr/share/nginx/html





