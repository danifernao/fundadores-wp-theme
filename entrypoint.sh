#!/bin/bash
set -e

# Ejecuta el entrypoint original de WordPress.
docker-entrypoint.sh apache2 &

# Espera a que WordPress esté listo.
until wp core is-installed --allow-root; do
  echo "Esperando a que WordPress esté listo..."
  sleep 5
done

# Instala y activa el idioma Español.
wp language core install es_CO --allow-root

# Ejecuta Apache en primer plano para mantener el contenedor vivo.
exec apache2-foreground