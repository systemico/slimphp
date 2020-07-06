# Systemico SlimPHP

Utiliza está aplicación para crear aplicaciones PHP enfocadas a micro servicios.

## Crear un pryecto nuevo.

Ejecuta el siguiente comando:

```bash
composer create-project systemico/slimphp [nombre_app]
```

Reemplace `[nombre_app]` con el nombre de la aplicación que desea crear:

* El punto de arranque de la apliacón es el directorio `/src/public/` .
* Si se presentá alguna situación debes revisar el directorio `/src/logs/`.

Para correr la aplicación en modo desarrollo utiliza el siguiente comando:

```bash
cd [nombre_app]
composer start
```

Si requieres trabajar con una base de datos utiliza `docker-compose`para correr el contenedor `docker`, para esto ejecuta el comando:
```bash
cd [my-app-name]
docker-compose up -d
docker-compose build && docker-compose up -d
```
Eso creará un servicio disponible en `http://localhost:8080` y lo podrás ejecutar en tu navegador de preferencia.

Para correr el modelo de pruebas ejecuta el comando:

```bash
composer test
```

Así de sencillo es!, buena suerte.
