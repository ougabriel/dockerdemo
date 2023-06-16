FROM node:alpine

# Create gab-app working directory
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
ADD package*.json ./

# Install app dependencies
RUN npm install

# Copy the app source code to the working directory
COPY . .

# Expose port 8080 for the app
EXPOSE 8080

# Start the app using Node.js
ENTRYPOINT [ "node", "app.js" ]
