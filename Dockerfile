FROM nginx:latest
MAINTAINER Marat Khusnetdinov <opensource@howtohireme.ru>

COPY /_site /etc/nginx/html/
COPY /.docker/nginx.conf /etc/nginx/nginx.conf
COPY /.docker/nginx.crt /etc/nginx/ssl/sert.crt
COPY /.docker/nginx.key /etc/nginx/ssl/sert.key

# logs files
# pid file
