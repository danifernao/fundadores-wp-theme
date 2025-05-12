#!/bin/bash
set -e

# Ejecuta el entrypoint original de WordPress.
docker-entrypoint.sh apache2-foreground &

# Espera hasta que WordPress esté instalado en la base de datos.
until wp core is-installed --allow-root; do
  echo "Esperando a que WordPress esté instalado en la base de datos..."
  sleep 5
done

# Instala el idioma Español.
wp language core install es_CO --allow-root

echo "WordPress ha sido configurado correctamente."

# Mantiene el contenedor vivo.
wait