FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install net-tools php apache2 -y
COPY index.php /var/www/html/
CMD ["apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
