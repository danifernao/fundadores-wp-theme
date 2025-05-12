#!/bin/bash
# Indica que el script se debe ejecutar con Bash.

set -e
# Hace que el script se detenga si ocurre cualquier error.

# Ejecuta el entrypoint original de WordPress.
docker-entrypoint.sh apache2-foreground &

# Espera hasta que WordPress esté instalado en la base de datos.
until wp core is-installed --allow-root; do
  echo "Esperando a que WordPress esté instalado en la base de datos..."
  sleep 5
done

# Instala el idioma Español.
wp language core install es_CO --allow-root

echo "WordPress está listo en http://localhost:8000/"

# Mantiene el contenedor vivo.
wait