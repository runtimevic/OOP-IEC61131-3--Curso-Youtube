### <span style="color:grey">Declaracion de un Function Block:</span> 
```iecst
FUNCTION_BLOCK <access specifier> <function block> | EXTENDS <function block> | IMPLEMENTS <comma-separated list of interfaces>
```
### <span style="color:grey">Implementación Bloque de Funciones:</span> 

![Function_Block](../imagenes/Function_Block_Coche.png)



***
<span style="color:orange"> EXTENDS:</span> 
- Si en la declaración de un FUNCTION_BLOCK añadimos la palabra EXTENDS seguida del nombre del FB del cual queremos heredar, significa que heredamos todos sus metodos y propiedades.(principio de Herencia)
- Un FB solo puede heredar de una Clase FB.
***
<span style="color:orange"> IMPLEMENTS:</span> 
- Si en la declaración de un FUNCTION_BLOCK añadimos la palabra IMPLEMENTS seguido del nombre de la interfaz o interfaces separadas por comas.
- Si en el FB se implementa una interfaz es obligatorio en el FB crear la programación de los metodos y propiedades de la interfaz implementada.
***
- Ejemplos de declaración de FUNCTION_BLOCK:
```javascript
FUNCTION_BLOCK INTERNAL ABSTRACT FB
FUNCTION_BLOCK INTERNAL FINAL FB
FUNCTION_BLOCK PUBLIC FINAL FB
FUNCTION_BLOCK ABSTRACT FB
FUNCTION_BLOCK PUBLIC ABSTRACT FB
FUNCTION_BLOCK FB EXTENDS FB1 IMPLEMENTS Interface1, Interface2, Interface3
```
