docker pull node:12.18.1
 
WORKDIR /app
 
COPY package.json package.json
COPY package-lock.json package-lock.json
 
RUN npm install

EXPOSE 3000 

COPY . .
 
CMD [ "node", "./server.js" ]
