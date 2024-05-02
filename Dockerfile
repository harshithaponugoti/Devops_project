# Use an official Node.js runtime as the base image
FROM node:14 as builder

# Set the working directory in the container
WORKDIR /app

# Install dependencies
RUN npm install

# Copy all the source code to the working directory
COPY . .

# Use Nginx as the base image for serving the application
FROM nginx:alpine
 
# Expose port 5500 to the outside world
EXPOSE 5500

# Command to run the Nginx server
CMD ["nginx", "-g", "daemon off;"]
