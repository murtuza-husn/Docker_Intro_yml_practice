# Use official Nginx image as the base
FROM nginx:latest

# Copy your custom HTML files to the directory Nginx serves from
COPY html /usr/share/nginx/html

# Expose port 80 for web traffic
EXPOSE 80

# The default command that runs Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]

