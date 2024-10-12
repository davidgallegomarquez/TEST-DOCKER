FROM ubuntu:latest
RUN apt-get update --fix-missing 
RUN apt install -y apache2
RUN ufw allow 'Apache'
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
WORKDIR /var/www/html/
COPY . .
CMD ["apache2ctl", "-D", "FOREGROUND"]
EXPOSE 8080