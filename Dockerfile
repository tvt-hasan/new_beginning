FROM nginx:alpine

# Remove default configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy custom configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy website files (from web directory)
COPY web/ /usr/share/nginx/html/

# Correct the CMD instruction
CMD ["nginx", "-g", "daemon off;"]
