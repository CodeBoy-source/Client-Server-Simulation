## Cliente - Servidor
Consideremos un sistema consistente en una entidad (servidor) que presta determinado ser-
vicio a una serie de entidades (clientes) que periódicamente llegan a solicitar dicho servicio. Por
ejemplo, los clientes pueden ser máquinas o piezas que necesitan ser reparadas y el servidor
un técnico reparador, o personas que van a ser atendidas por un cajero de un banco o de un
supermercado, etc ́etera.

## ¿Cómo funciona?
Asumiremos que al empezar la simulación no hay clientes esperando y el servidor está libre.
Utilizaremos un generador de datos de tiempos entre llegadas y uno de tiempos de servicio
ambos exponenciales de medias tlleg y tserv, respectivamente, expresadas, por ejemplo, en
horas. Así, tlleg=0.15 (9 minutos) y tserv=0.1 (6 minutos).

## ¿Cómo ejecutar?
Disponemos de dos códigos:
- cliente\_servidor: Utiliza incremento fijo de tiempo.
    - `bash ./bin/cliente_servidor 0.15 0.1 10000 1 `
    - El primer parámetro es tiempo medio de llegada;
    - El segundo es tiempo medio de servicio;
    - El tercer es el número de iteraciones;
    - El último es si queremos guardar o no los resultados;
- cliente\_servidor\_variable: Utiliza incremento fijo de tiempo.
    - `bash ./bin/cliente_servidor_variable 0.15 0.1 10000 1 `
    - El primer parámetro es tiempo medio de llegada;
    - El segundo es tiempo medio de servicio;
    - El tercer es el número de iteraciones;
    - El último es si queremos guardar o no los resultados;

## ¿Y los resultados?
En caso de que se haya activado el bit para guardar los resultados (por defecto está
activado) se guardarán los resultados en la carpeta `./resultados/` con los nombres
adaptados al los parámetros de ejecución y el tipo.
Además, disponemos de gráficas para la visualización del comportamiento en la
carpeta `./resultados/graphs/`

## Carpeta - scripts:
En esa carpeta poseemos scripts utilizados para generar todos los datos necesarios
para la documentación de esta práctica de forma automática.
