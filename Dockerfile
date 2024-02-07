# Use an official Node.js 20 image as a base image
FROM node:20

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and pnpm-lock.yaml to the working directory
COPY package.json pnpm-lock.yaml ./

# Install app dependencies using pnpm
RUN npm install -g pnpm && pnpm install

# Copy the application code to the container
COPY . .

# Define the command to run your application
CMD npm run bstart
