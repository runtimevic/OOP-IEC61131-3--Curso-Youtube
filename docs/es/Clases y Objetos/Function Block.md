### Declaracion de un Function Block:
```iecst
FUNCTION_BLOCK <access specifier> <function block> | EXTENDS <function block> | IMPLEMENTS <comma-separated list of interfaces>
```
### Implementación Bloque de Funciones:

![Function_Block](../imagenes/Function_Block_Coche.png)


### Modificadores de acceso Bloque de Funciones:
Podemos tener 2 modificadores de acceso para el Bloque de Funciones:

- <span style="color:orange">PUBLIC:</span> 
No hay restricciones, se puede llamar desde cualquier lugar. 
    - Si no ponemos nada al declarar el FB es lo mismo que PUBLIC.
    - Cualquiera puede llamar o crear una instancia del FB.
    - Se puede usar para la herencia al ser public. 
- <span style="color:orange">INTERNAL:</span> 
    - Solo se puede acceder al FB desde el mismo espacio de nombres. 
    - Esto permite que el FB este disponible solo dentro de una determinada biblioteca.
- <span style="color:orange">FINAL:(en TwinCAT 3 no sale por defecto para seleccionarlo al crear un FB, pero se puede añadir mas tarde despues de crearlo...)</span> 
    - El FB no puede servir como un bloque de funciones principal. 
    - Los métodos y las propiedades de esta POU no se pueden heredar. 
    - FINAL solo está permitido para POU del tipo FUNCTION_BLOCK.

La configuración predeterminada donde no se define ningún especificador de acceso es PUBLIC .