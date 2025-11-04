# Dockerfile for a static website
FROM nginx:latest
COPY . /usr/share/nginx/html
EXPOSE 80
