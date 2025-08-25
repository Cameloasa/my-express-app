# Use Node.js 24 pe Alpine Linux 3.21
FROM node:24-alpine3.21

#Set the working directory
WORKDIR /app

# Copy config files
COPY package*.json ./

#Install dependencies
RUN npm install

#Copy config files
COPY . .

#Expose the app port
EXPOSE 3000

#Start the server
CMD [ "node", "app.js" ]