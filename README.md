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

Para realizar la implementación necesitamos tener instalado [Docker](https://docs.docker.com/get-docker/) y [Git](https://git-scm.com/book/en/v2). Una vez instalados abrimos el bash de Git y utilizamos los siguientes comandos: 

1. Clonar el repositorio
   ```
   git clone https://github.com/FerLunaP/ANALISIS_COVID-19.git
   ```
2. Generamos la imagen de Docker mediante el Dockerfile
   ```
   docker build -t covid .
   ```
3. Creamos un nuevo contenedor a partir de la imagen generada en el paso anterior
   ```
  docker create -i --name CovidContainer covid
   ```
4. Iniciamos el contenedor
   ```
  docker start CovidContainer
   ```
5. Ejecutamos el contenedor (desde bash de Git ocupamos iniciar el comando con winpty)
   ```
  winpty docker exec -it CovidContainer bash
   ```
6. Al finalizar el procesamiento del paso anterior copiamos el archivo generado a nuestro equipo desde el contenedor.
   ```
  docker cp CovidContainer:/root/Covid_Tampico.csv .
   ```
   
### Resultados
Se obtiene el archivo [Covid_Tampico.csv](https://github.com/FerLunaP/ANALISIS_COVID-19/blob/main/Covid_Tampico.csv) con los datos de los casos de Covid en el municipio de Tampico.
