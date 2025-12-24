
# Use an official Nginx image as the base
FROM nginx:alpine

# Set working directory inside the container
WORKDIR /usr/share/nginx/html

# Remove default Nginx static files
RUN rm -rf ./*

# Copy all website files from your local directory to the container
COPY . .

# Expose port 80 for HTTP traffic
EXPOSE 80

# Nginx runs by default, so no CMD needed
