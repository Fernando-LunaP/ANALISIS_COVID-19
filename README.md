## Análisis de datos de covid-19 en Tampico

El objetivo de esta página es para dar a conocer los resultados del análisis de los datos de COVID-19 para el curso **Herramientas de Productividad para Ciencia de Datos** de la Universidad de Sonora.

Esta actividad tiene como objetivo mostrar la información de los casos positivos de COVID-19 en el municipio de Tampico, Tamaulipas con la base de datos proporcionada por la Dirección General de Epidemiología.

### Metodología

Mediante un [Dockerfile](https://github.com/FerLunaP/ANALISIS_COVID-19/blob/main/Dockerfile) se genera un contenedor de ubuntu que contiene los programas necesarios para ejecutar un [script](https://github.com/FerLunaP/ANALISIS_COVID-19/blob/main/covid_shell.sh). El procedimiento es el siguiente:

- Se descargan los programas necesarios para obtener y realizar la alimpieza de los datos.
- Se descarga la base de datos de la página de [Datos Abiertos Dirección General de Epidemiología](https://www.gob.mx/salud/documentos/datos-abiertos-152127).
- Limpieza de los datos para dejar solamente la información más relevante de los casos de Covid-19 en el municipio de Tampico.
- Generación de archivo csv para su análisis.
- Se transfiere el csv del contenedor de Docker al equipo.

### Implementación

Para realizar la implementación necesitamos tener instalado [Docker](https://docs.docker.com/get-docker/) y [Git](https://git-scm.com/book/en/v2). Una vez instalados realizamos los siguiente:

1. Clonamos el repositorio
   ```
   git clone https://github.com/FerLunaP/ANALISIS_COVID-19.git
   ```
2. Build the docker image note: no forget the final dot ".", after the next command
   ```
   docker build -t ubuntu .
   ```

1. Numbered
2. List

**Bold** and _Italic_ and `Code` text

[Link](url) and ![Image](src)
```

For more details see [Basic writing and formatting syntax](https://docs.github.com/en/github/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax).

### Jekyll Themes

Your Pages site will use the layout and styles from the Jekyll theme you have selected in your [repository settings](https://github.com/FerLunaP/ANALISIS_COVID-19/settings/pages). The name of this theme is saved in the Jekyll `_config.yml` configuration file.

### Support or Contact

Having trouble with Pages? Check out our [documentation](https://docs.github.com/categories/github-pages-basics/) or [contact support](https://support.github.com/contact) and we’ll help you sort it out.
