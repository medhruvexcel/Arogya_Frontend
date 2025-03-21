# Use an official Nginx image
FROM nginx:alpine

# Copy indexxx.html to the default nginx directory
COPY chatbot.html /usr/share/nginx/html/
COPY scan.html /usr/share/nginx/html/
COPY neardoc.html /usr/share/nginx/html/
COPY index.html /usr/share/nginx/html/index.html

## Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
