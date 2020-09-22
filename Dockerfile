FROM  devopsedu/webapp
MAINTAINER VamsiAdari

CMD yum -y install apache2

CMD yum -y install php7.0
CMD yum -y install libapache2-mod-php7.0

RUN rm -rf /var/www/html/*
ADD website /var/www/html

EXPOSE 80

CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]


