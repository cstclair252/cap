# Use the official Nginx image as the base image
FROM nginx

# Copy the static website files into the container
COPY website/ /usr/share/nginx/html
