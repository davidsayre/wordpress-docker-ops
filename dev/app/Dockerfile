FROM wordpress:latest

RUN apt update && apt install -y less
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
      && chmod +x wp-cli.phar \
      && cp wp-cli.phar /usr/local/bin/wp

## DJS
# align www-data with UID 1000 so directory + caches are same and bin/console works as www-data (1000)
RUN usermod --shell /bin/bash www-data  && \
  usermod --uid 1000 www-data && \
  groupmod -g 1000 www-data && \
  chown www-data:www-data -Rf /var/www