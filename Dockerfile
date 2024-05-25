FROM node:20.10.0

# Create app directory
WORKDIR /usr/src/app

# Install app dependenciess
COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]