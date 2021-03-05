FROM systemico/systemico-php:V1
COPY ["src","/var/www/html/"] 
WORKDIR /var/www/html
ENV APACHE_DOCUMENT_ROOT=/var/www/html/src
RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf
CMD ["apachectl", "-D", "FOREGROUND"]
EXPOSE 80