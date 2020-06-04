FROM node:alpine 
WORKDIR /app
COPY package.json ./
RUN npm install
COPY . .
CMD npm run start
EXPOSE 4200


# FROM nginx:1.16.0-alpine as prod-stage
# COPY --from=node app/dist/firebaselogin /usr/share/nginx/html
