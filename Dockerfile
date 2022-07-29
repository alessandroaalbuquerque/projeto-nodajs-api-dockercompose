FROM node:latest

COPY packaege*.json .

RUN npm install
RUN npm install yarn pm2 esm restify mongoose
RUN yarn add pm2 esm restify mongoose
RUN install -D dotenv mongoose

COPY . .

EXPOSE 3001 27017