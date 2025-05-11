# Fundadores

Tema WordPress diseñado para el sitio web del Hogar Infantil Los Fundadores.

![Captura de pantalla de una página con el tema](./screenshot.png)

## Instalación

### Tema

El tema se encuentra en `wp-content/themes/fundadores`. Para obtener más detalles, consulta el archivo [README](wp-content/themes/fundadores/README.md) en esa ubicación.

### Docker

Con Docker puedes visualizar el tema en un entorno de desarrollo configurado para un proyecto demostrativo. Sigue estos pasos:

1. Asegúrate de tener instalado Docker y su servicio en ejecución.
2. Descarga o clona este repositorio e ingresa a él.
3. Renombra el archivo `.env.example` a `.env`.
4. Abre el terminal y ejecuta lo siguiente para instalar y poner en marcha los contenedores:

```
docker compose up
```

5. Abre el navegador web y visita la dirección http://localhost:8000 para visualizar el sitio web.
6. Accede a phpMyAdmin en http://localhost:8001.
7. Accede a MailHog en http://localhost:8002.

#### Credenciales

Para acceder al _Escritorio_ de WordPress, ve a http://localhost:8000/wp-admin e ingresa las siguientes credenciales:

**Nombre de usuario:** `admin`\
**Contraseña:** `adminpass@li#2025`
