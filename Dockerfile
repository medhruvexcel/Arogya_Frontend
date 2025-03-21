# Use an official Nginx image
FROM nginx:alpine

# Copy indexxx.html to the default nginx directory
COPY chatbot.html /usr/share/nginx/html/
COPY Image.html /usr/share/nginx/html/
COPY doc.html /usr/share/nginx/html/
COPY indexxx.html /usr/share/nginx/html/index.html

## Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
