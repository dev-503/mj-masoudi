# Use an official Nginx runtime as a parent image
FROM nginx:stable

COPY index.html /usr/share/nginx/html/
COPY assets/js/script.js /usr/share/nginx/html/
COPY assets/css/style.css /usr/share/nginx/html/
COPY assets/images/* /usr/share/nginx/html/

EXPOSE 443

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
