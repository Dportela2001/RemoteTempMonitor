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
A continuación se ve una lista resumida de los elementos más importantes a utilizar, con sus respectivos precios, cantidad y tienda sugerida, para una lista más detallada de todos los componentes puede ver el excel **Lista_componentes.xlsx**
 - Sensor de temperatura DS18B20 con sonda de 2m.
   * Precio: $16.660
   * Tienda: Sigma
   * Unidades: 1
 - Pantalla oled de 1.3''.
   * Precio: $24.000
   * Tienda: Ferretrónica
   * Unidades: 1
 - Led RGB de introdución.
   * Precio: $714
   * Tienda: Sigma
   * Unidades: 4
 - Bocina 8 Ohmios 0.25 W.
   * Precio: $2.000
   * Tienda: Mactrónica
   * Unidades: 1
 - Microcontrolador ESP32 superficial.
   * Precio: $18.000
   * Tienda: Mactrónica
   * Unidades: 1
- Batería 18650 Recargable Litio Ion 8800 mAh
   * Precio: $9.900
   * Tienda: Mercado Libre
   * unidades: 2
- chip cargador inteligente bateria TP4056
   * Precio: $2.142
   * Tienda: Sigma
   * unidades: 1

## Más detalles
Para más detalles del proyecto, vaya a cada una de las carpetas del proyecto y ahí verá información de lo que existe en cada carpeta.

