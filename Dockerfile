FROM node:latest

# COPY index.js home/app/index.js

# COPY package.json home/app/package.json

# ro copy all files at once

COPY . home/app

WORKDIR /home/app/

RUN npm install

EXPOSE 3000

CMD ["node" ,"index"]