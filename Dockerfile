# Use the official Nginx image as the base
FROM nginx:latest

# Copy the HTML files into the container
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Command to start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
