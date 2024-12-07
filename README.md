# ANÁLISIS DE VENTAS RSM - DETALLES Y REQUISITOS

## INTEGRANTES
1. Geissna Abigail Yazbek de Martínez (geissna.yazbek@gmail.com)

2. Silvia Beatriz Perez Lopez (perezlopez0689@gmail.com)

3. Katherine Stephanie Cabrera Blanco (katie.cabrera07@gmail.com)

4. Oscar Jose Guerra Aquino (oscarguerra3001@gmail.com)

5. Ever Bladimir Pérez Cruz (ever.perezcrz07@gmail.com)

## REQUISITOS

Postgresql (PgAdmin o extensiones para Postgresql desde VSC)  
Python (Pandas, Matplotlib, Numpy),  
Power BI  
Google Colab o Instalación de extensión de Jupyter en VSC para los Notebooks de trabajo

## DEFINICIÓN DE CARPETAS

**1. Definición**
   En esta carpeta se da inicio al proyecto y en ella se incluye un archivo en formato PNG llamado *Diagrama ER.png* donde se demuestra como
   se diseño el diagrama Entidad-Relación a partir de los datos propocionados y de esta forma se realizo en otro archivo *(Definición de base de datos.sql)*
   la creación de la base de datos y sus respectivas tablas, añadiendo la estructura y relaciones entre ellas.

**2. Extracción**
   Carpeta número dos del proyecto, en ella se encuentra adjunto un archivo llamado *Consultas SQL para Extracción de información.sql*
   donde se realizan tres consultas para obtener información relevante acerca de la base de datos proporcionada, consultas como ventas totales por categoría,
   clientes con mayor valor de compra y productos más vendidos por región.
   Ademas de esto se encuentra una carpeta denominada *Importación de datos* en ella se han alojado los diferentes csv con la información a importar a cada
   una de las tablas creadas anteriormente, cabe destacar que cada archivo ha tenido su proceso de limpieza y se han ajustado de acuerdo al diseño de la base
   de datos.

**3. Exploración**
   En esta carpeta se encuentran notebooks de trabajo donde se ha realizado un análisis exploratorio para conocer como estan distribuidos los datos
   haciendo uso de estadística descriptiva para obtener insights que sean de apoyo para entender los datos.
   Para que se puedan observar los notebooks con su respectivo análisis se creo un archivo csv denominado *Consolidado.csv* esta tabla es un datawarehouse que
   contiene toda la información proporcionada y este archivo es importado en el notebook de trabajo.
   Importante mencionar que el notebook de trabajo se puede ver tambien desde Google Colab.
   
