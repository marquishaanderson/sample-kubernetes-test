FROM node:18.16.0-alpine3.17
ARG NODE_ENV=production
ARG VERSION=1.0.0
RUN mkdir -p /opt/app
WORKDIR /opt/app
COPY . .
RUN npm install
EXPOSE 3000
CMD [ "npm", "start"]