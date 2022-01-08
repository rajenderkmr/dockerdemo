FROM centos:latest
MAINTAINER rajenderkmr@gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page273/canvas.zip
/var/www/html/
WORKDIR /var/www/html
RUN unzip canvas.zip
RUN cp -rvf markups-canvas/*.
RUN rm -rf _MACOSX markup-canvas canvas.zip
CMD ["usr/sbin/htttpd", "D","FOREGROUND"]
EXPOSE 80
