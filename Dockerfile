FROM ubuntu
MAINTAINER NARESH
RUN apt-get update && apt-get install apache2 && service apache2 start
COPY index.html /var/www/html/index.html
EXPOSE 80
