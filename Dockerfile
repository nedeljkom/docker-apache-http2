FROM httpd:2.4
LABEL maintainer="milinkovic.ned@gmail.com"

COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf
COPY ./.htaccess /var/www/html/.htaccess
COPY ./site-conf/* /usr/local/apache2/conf/site-conf/

EXPOSE 80 443

VOLUME /etc/tls/ 
VOLUME /usr/local/apache2/logs

COPY ./html/* /usr/local/apache2/htdocs/