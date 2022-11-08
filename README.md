# Proyecto-SQL

## 🎯 OBJETIVOS

    - Cargar y limpiar los datos de los archivos .csv proporcionados en el repositorio y extraerlos
    - Crear una base de datos de una tienda de peliculas o algo por el estilo
    - BBDD de SQL con relaciones lógicas
    - Comprobar funcionamiento con 10 queries en la base de datos creada.

## 🚶 PASOS DE LA EXTRACCIÓN Y LIMPIEZA

    1. Leemos los archivos .csv en nuestro Jupyter Notebook(Limpieza.ipynb).
    2. Limpiamos los datos con Pandas a partir de DataFrames:
        - Eliminamos columna de nulos.
        - Eliminamos columnas con valores constantes('last_update').
        - Modificación de valores erróneos en 'inventory_id'
    3. Una vez limpiamos, los extraemos en un nuevo .csv(data_limpio)

## 💠 MODELO RELACIONAL SQL

    - Nos conectamos a otro Jupyter Notebook y comenzamos a cargar los datos limpios(python_sql.ipynb).
    - Posteriormente nos conectamos al servidor SQL y los cargamos.
    - Creamos una nueva tabla old con el actor_id y film_id por problemas de conexiones relacionales(CorregirErroresRelaciones.sql).
    - Modificar la columna first_name y last_name y las concatenamos.
    - Añadimos categoría de 'primary key' y relaciones con 'foreign key'(python_sql.ipynb).
    - Estructura:

![Relacional](/img/Relacional.jpg)

## ❓ ALGUNAS QUERIES

### ¿Cuáles son los 5 generos con mayor número de películas? (JOIN)
![query1](/img/query1.jpg)

### Selecciona la pelicula con titulo 'HOME PITY' con su descripción, id e idioma. (WHERE)
![query2](/img/query2.jpg)

### Encuentra el actor que contine menos de 10 peliculas. (Having)
![query3](/img/query3.jpg)

### Listado de peliculas que contengan escenas detras de camaras. (LIKE)
![query4](/img/query4.jpg)

## 🗺️ MIS EXTRAS

    Creo las tablas(STAFF, CUSTOMER Y STORE) y le añadimos algunos datos para posterior 
    comprobación de resultados.

    Posteriormente relacionamos estas 3 trablas con la base de datos.

    CREACIÓN DE MAPA CON PUNTOS GEOGRAFICOS(Mapa.ipynb)

    Vamos a pintar a continuación un mapa con las localizaciones de las dos tiendas 
    que he añadido a la base de datos en la tabla STORE.
![store](/img/loc1.jpg)
    
    Seguimos añadiendi la columna con el punto geo_loc con la latitud y la longitud

    Finalmente pintamos el mapa:
![mapa](/img/mapa.jpg)
