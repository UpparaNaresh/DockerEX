#FROM ubuntu:16.04
#MAINTAINER NARESH
#ENV TZ=Asia/Kolkata
#RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
#RUN apt-get update && apt-get install apache2 -y && service apache2 start
#COPY index.html /var/www/html/index.html
#EXPOSE 80  
FROM ubuntu:16.04
MAINTAINER NARESH-NGINX
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update && apt-get install nginx -y && service nginx start
EXPOSE 80
EXPOSE 443
