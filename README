# Nombre del Proyecto

Proyecto integrador Digital House Pet Paradise reserva de habitaciones para mascotas

## Contenido

- [Uso de Docker Compose](#uso-de-docker-compose)
- [Clonación del Repositorio](#clonaci%C3%B3n-del-repositorio)
- [Submódulos](#subm%C3%B3dulos)

## Uso de Docker Compose

Para levantar la aplicación usando Docker Compose, puedes utilizar los siguientes comandos:

- Para construir y levantar los contenedores usando el archivo `docker-compose.yml` por defecto:

  ```sh
  docker-compose up --build
  ```
  Esto generará imagenes locales independientes de las imágenes que existen en el repositorio, esto es necesario ya que existen contenedores y aplicaciones específicas para el entorno de producción que no deben ser utilizados en local


- El archivo `compose.override`, contiene parte de las configuraciones utilizadas en producción por lo que este archivo puede eliminarse sin problemas (por defecto no será usado por docker-compose)


## Clonación del Repositorio

Para clonar este repositorio, ejecuta el siguiente comando:

```sh
git clone [URL_DEL_REPOSITORIO]
```

El repositorio utiliza submódulos, por lo que es recomendable clonar de forma recursiva:

```sh
git clone --recursive [URL_DEL_REPOSITORIO]
```

## Submódulos

Si ya has clonado el repositorio sin la opción `--recursive` o se han agregado nuevos submódulos, inicialízalos y actualízalos usando:

```sh
git submodule update --init --recursive
```

Para actualizar los submódulos a la última versión remota, ejecuta:

```sh
git submodule update --remote --merge --recursive
```

## Estructura del Proyecto

- **integradorG5Back/**: Contiene la parte backend con su propio `Dockerfile` y archivos de configuración para producción.
- **integradorG5Front/**: Contiene la parte frontend, así como los archivos `Dockerfile` para entornos de desarrollo y producción.
- **database/**: Contiene la parte de la bd, esta el diagrama, el script que pobla la bd y el correspondiente `Dockerfile`
- Otros archivos como `.env`, `docker-compose.yml`, y `compose.override` se utilizan para la configuración global del entorno.

> Asegúrate de revisar la configuración de cada uno de los servicios y adapta los comandos de Docker Compose según las necesidades específicas de cada entorno.