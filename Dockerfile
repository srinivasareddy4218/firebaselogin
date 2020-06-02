FROM node:11.15.0-alpine as node
WORKDIR /app
COPY package.json ./
RUN npm install
COPY . .
RUN npm run build



FROM nginx:1.16.0-alpine as prod-stage
COPY --from=node app/dist/firebaselogin /usr/share/nginx/html
