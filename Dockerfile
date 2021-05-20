FROM node:alpine 
WORKDIR /app
COPY package.json ./
RUN npm install
COPY . .
CMD npm run start
EXPOSE 4200


# FROM  nginx:alpine
 #COPY /dist/firebaselogin /usr/share/nginx/html
