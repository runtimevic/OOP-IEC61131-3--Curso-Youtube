### <span style="color:grey">Modificadores de acceso Bloque de Funciones:</span> 
Podemos tener 2 modificadores de acceso para el Bloque de Funciones:

- <span style="color:orange">PUBLIC:</span> 
    - No hay restricciones, se puede llamar desde cualquier lugar. 
    - Si no ponemos nada al declarar el FB es lo mismo que PUBLIC.
    - Cualquiera puede llamar o crear una instancia del FB.
    - Se puede usar para la herencia al ser public. 
    - Son accesibles luego de instanciar la clase.
    - Corresponde a la especificación de modificador sin restricción de acceso.
- <span style="color:orange">INTERNAL:</span> 
    - Solo se puede acceder al FB desde el mismo espacio de nombres. 
    - Esto permite que el FB este disponible solo dentro de una determinada biblioteca.
La configuración predeterminada donde no se define ningún especificador de acceso es PUBLIC .
    - El acceso está limitado al espacio de nombres (la biblioteca).
***
Podemos tener otros 2 modificadores de acceso para el Bloque de Funciones:
- <span style="color:orange">FINAL:</span>
    - (en TwinCAT 3 no sale por defecto para seleccionarlo al crear un FB, pero se puede añadir mas tarde despues de crearlo...) 
    - El FB no puede servir como un bloque de funciones principal. 
    - Los métodos y las propiedades de esta POU no se pueden heredar. 
    - FINAL solo está permitido para POU del tipo FUNCTION_BLOCK.
    - No se permite sobrescribir, en un derivado del bloque de funciones. 
    - Esto significa que no se puede sobrescribir/extender en una subclase posiblemente existente.    
- <span style="color:orange">ABSTRACT:</span> 
bloques de funciones abstractas
```javascript
FUNCTION_BLOCK PUBLIC ABSTRACT FB_Foo
```
    - Tan pronto como un método o una propiedad se declaran como abstractos , el bloque de funciones también debe declararse como abstracto .
    - No se pueden crear instancias a partir de FB abstractos. Los FB abstractos solo se pueden usar como FB básicos cuando se heredan.
    - Todos los métodos abstractos y todas las propiedades abstractas deben sobrescribirse para crear un FB no abstracto. Un método abstracto o una propiedad abstracta se convierte en un método no abstracto o una propiedad no abstracta al sobrescribir.
    - Los bloques de funciones abstractas pueden contener además métodos no abstractos y/o propiedades no abstractas.
    - Si no se sobrescriben todos los métodos abstractos o todas las propiedades abstractas durante la herencia, el FB heredado solo puede ser un FB abstracto (concretización paso a paso).
    - Se permiten punteros o referencias de tipo FB abstracto. Sin embargo, estos pueden referirse a FB no abstractos y, por lo tanto, llamar a sus métodos o propiedades (polimorfismo).   
