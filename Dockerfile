# Use the official Nginx image as the base image
FROM nginx:latest

# Set the working directory (optional, you don't actually use /app here)
WORKDIR /app

# Clean up the default HTML directory in Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copy all contents of the Bitonbuy directory (including subdirectories)
COPY Bitonbuy/ /usr/share/nginx/html/

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Nginx in the foreground (required to keep the container running)
CMD ["nginx", "-g", "daemon off;"]

~                                             
