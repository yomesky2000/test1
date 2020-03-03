FROM centos

LABEL project="Engineer Ginger Apache Docker Image"
LABEL maintainer "Oluyomi Sunmonu ginger@trafford-contractors.com"

RUN yum -y install httpd
RUN echo "This Page Designed by Engineer Ginger, for Docker Build; Running on CentOS 7" > /var/www/html/index.html


EXPOSE 80

VOLUME /var/www/html

ENTRYPOINT [ "/usr/sbin/httpd" ]
CMD ["date"]
