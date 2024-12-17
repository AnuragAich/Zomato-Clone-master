# Use Node.js 18 slim as the base image
FROM node:18-slim

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container (for dependency installation)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files to the container
COPY . .

# Expose the port the app will run on (example: 3000)
EXPOSE 3000

# Command to run the application (change according to your app)
CMD ["npm", "start"]
