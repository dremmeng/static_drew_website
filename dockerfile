FROM nginx:alpine
COPY nginx.conf /etc/nginx/nginx.conf
COPY html /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
# Set permissions for static files
RUN chmod 644 /usr/share/nginx/html/index.html /usr/share/nginx/html/styles.css \
    && chown nginx:nginx /usr/share/nginx/html/index.html /usr/share/nginx/html/styles.css