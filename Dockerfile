FROM wordpress:latest

# Instala WP-CLI.
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
  chmod +x wp-cli.phar && \
  mv wp-cli.phar /usr/local/bin/wp

# Copia el entrypoint personalizado.
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

# Usa el entrypoint personalizado.
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

# Asegura que todos los procesos corran como www-data
USER www-data