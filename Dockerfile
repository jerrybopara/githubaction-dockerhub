# FROM node:7.7.2-alpine
# WORKDIR /usr/app
# COPY package.json .
# RUN npm install --quiet
# COPY . .

# EXPOSE 5000 
# CMD [ "node", "server.js" ]

FROM node:alpine
RUN npm install -g npm@8.6.0
WORKDIR /usr/app
COPY package.json .
RUN npm install
COPY . .
EXPOSE 5000
CMD [ "node", "server.js" ]