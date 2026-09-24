FROM node:18
WORKDIR /usr/src/app
RUN apt-get update -y
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3005
CMD ["npm", "start"]