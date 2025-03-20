FROM node:latest

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000 
# The app will run on port 3000

CMD ["node", "app.js"]