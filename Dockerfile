FROM 547445247510.dkr.ecr.us-east-1.amazonaws.com/node-base:14
WORKDIR /usr/src/app
COPY app/package*.json ./
RUN npm install
COPY app/ .
EXPOSE 8080
CMD ["node", "index.js"]
