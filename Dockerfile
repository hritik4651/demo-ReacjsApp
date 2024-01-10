# Use an official Node.js runtime as a parent image
FROM node:20-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files to the container
COPY . .

# Set environment variables
#ENV NODE_ENV production
#ENV REACT_APP_API_URL http://api.example.com

# Expose the port that your app will run on
EXPOSE 4651

# Define the command to run your application
CMD ["npm", "start"]

