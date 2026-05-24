#Use lightwight Node.js image
FROM node:18-alpine

#Set working directory inside the container
WORKDIR /app

#Copy package files first
COPY package*.json ./

#Install dependencies
RUN npm install

#Copy the rest of the project files
COPY . .

#Expose the port the app runs on
EXPOSE 3004

#Start the application
CMD ["npx", "nodemon", "index.js"]