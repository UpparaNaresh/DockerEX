FROM ubuntu
MAINTAINER NARESH
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update && apt-get install apache2 && service apache2 start
COPY index.html /var/www/html/index.html
EXPOSE 80
