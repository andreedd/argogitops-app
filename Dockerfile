# Use the official Nginx image as the base image
FROM nginx

# Create a custom HTML page and write the message to it
#RUN echo '<!DOCTYPE html><html><head><title>Custom Nginx Message</title></head><body><h1>Hello, this is a custom message served by Nginx!</h1></body></html>' > /usr/share/nginx/html/index.html

# Copy your index.html file into the container's default document root directory
COPY index.html /usr/share/nginx/html/

# Expose port 80 (Nginx's default port)
EXPOSE 80

# Command to start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
