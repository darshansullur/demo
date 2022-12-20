FROM centos:7

#install httpd (web server)
RUN yum -y update
RUN yum -y install httpd 

# home page copy from /home/ec2-user/index.html
COPY /home/ec2-user/index.html /var/www/html/index.html

EXPOSE 80
#start web server
ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]
