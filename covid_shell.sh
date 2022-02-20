# Se eliminan archivos zip previos
rm *.zip
# Iniciando descarga de los datos
curl -L -O https://datosabiertos.salud.gob.mx/gobmx/salud/datos_abiertos/datos_abiertos_covid19.zip
# Descomprimiendo datos
unzip datos_abiertos_covid19.zip
mv *.csv COVID19.csv
# Obteniendo datos
csvcut  -c ENTIDAD_RES,MUNICIPIO_RES,SEXO,EDAD,FECHA_INGRESO,FECHA_SINTOMAS,CLASIFICACION_FINAL  COVID19.csv  |  csvgrep -c ENTIDAD_RES -m "28" |  csvgrep -c MUNICIPIO_RES -m "38" | csvgrep -c CLASIFICACION_FINAL -r "[0-3]$" > Covid_Tampico.csv
# Se eliminan los archivos innecesarios
rm datos_abiertos_covid19.zip COVID19.csv