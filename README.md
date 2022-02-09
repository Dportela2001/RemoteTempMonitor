# RemoteTempMonitor
Device for temperature monitoring, focused on beer manufacture.

Dispositivo embebido enfocado a monitorear y guiar al usuario en la creación de cerveza. Se pretende que el dispositivo funcione como una herramienta de ayuda que pueda facilitar la toma de temperatura, y el subsecuente control de la misma en las fáses de calentamiento y enfriamiento del mosto.



## Descripción no funcional 

- Acoplarse adecuadamente al recipiente empleado.
- Comunicarse de manera inalámbrica via Wifi o bluetooth. 
- Tener una resolución de 1°C con incertidumbre de  0.5°C.
- Medir temperaturas entre: 0ºC a 120ºC. 
- Establecer conexiones a mínimo 10 m de distancia.
- Tener un tiempo de comunicación de 15s.


## Descripción funcional 

- Medir temperatura.
- Enviar la temperatura a un dispositivo móvil .
- Permitir la configuración de alarmas de temperatura.
- Disparar alarmas. 
- Mostrar temperatura en un display.

## Fases de la utilización del producto:
![Fases](Diagrama-Fases.png)

## Diagrama de bloques de la solución
![Bloques](BlockDiagram.png)

## Dispositivos a emplear
A continuación se ve una lista resumida de los elementos más importantes a utilizar, con sus respectivos precios, cantidad y tienda sugerida, para una lista más detallada de todos los componentes puede ver el excel **Lista_componentes.xlsx**.

## Diseño de caja 

Con el fin de realizar un empaquetado para el termómetro, se realizó el diseño de una caja en madera con corte laser mediante el programa de CorelDraw. El objetivo es que esta  proteja el circuito del termómetro como tal, así como proveerle una mejor apariencia estética. 
Para el diseño se emplearon las medidas tomadas directamente del diseño obtenido de la pcb en Kicad:

![diseno](disenoPCB.png = 10x)
Entonces se planea el diseño de tal forma de que haya cierta tolerancia a los tamaños reales de la plata. Se tienen en cuenta elementos que deben ser visibles al usuario como:

- Pantalla de interacción.
- Botonera.
- Puerto de carga USB.
- Led de indicación de bateria baja.
- Led de indicación de carga completa.
- Rejilla para el buzzer.

El resultado del diseño se encuentra en la sección **Box-Design**, donde se encuentran tanto los archivos generados en formatos .pdf y .svg (archivo de gráficos escalables), como el archivo original para ser abierto en el programa CorelDraw. La previsualización resulta:

![disenoFianl](Caja-DisenoFinal.jpeg = 50x)

##Dispositivo resultante 

Después de realizar la soldadura de los elementos en el circuito impreso, se añadieron así mismo los periféricos 

## Más detalles
Para más detalles del proyecto, vaya a cada una de las carpetas del proyecto y ahí verá información de lo que existe en cada carpeta.

