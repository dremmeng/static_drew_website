# Use the official Nginx image from the Docker Hub
FROM nginx:latest

# Set the working directory to the Nginx html directory
WORKDIR /usr/share/nginx/html

# Copy the local static website files into the container
COPY / .

# Optionally, you can add a custom Nginx configuration file
# COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
