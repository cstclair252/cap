# Use the official Nginx image as the base image
FROM nginx:1.24.0

# Copy the static website files into the container
COPY website/ /usr/share/nginx/html
