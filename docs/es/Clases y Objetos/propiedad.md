### <span style="color:grey">Propiedades:</span>

***
Las propiedades son las principales variables de una clase. Se pueden utilizar como una alternativa a la clase regular o
E/S del bloque de funciones.
Las propiedades tienen métodos Get "Obtener" y Set "Establecer" que permiten acceder y/o cambiar las variables:

- Get - Método que devuelve el valor de una variable;
- Set - Método que establece el valor de una variable.

Al eliminar el método "Obtener" o "Establecer", un programador puede hacer que las propiedades sean "de solo escritura" o
“solo lectura”, respectivamente.
Dado que estos son métodos, significa que las propiedades pueden:

- Tener sus propias variables internas;
- Realizar operaciones antes de devolver su valor;
- No es necesario adjuntar la variable devuelta a una entrada o salida en particular (o
variable interna) de la POU, puede devolver un valor basado en una determinada combinación de sus
variables;
- Ser accedido por evento en lugar de ser verificado en cada ciclo de ejecución.

***
.Propiedades: Getters & Setters

para modificar directamente nuestras propiedades lo que se busca es que se haga a través de los metodos Getters y Setters, el cual varía la escritura según el lenguaje pero el concepto es el mismo.
***
Por lo tanto, una declaración de propiedad tiene la siguiente estructura:

```typescript
PROPERTY <Access specifier> <Name> : <Datatype>
```
En el Objeto Propiedad es obligatorio que retorne un valor...
***
### <span style="color:grey">Especificadores de acceso:</span>
Al igual que con los métodos, las propiedades también pueden tomar los siguientes especificadores de acceso: **PUBLIC , PRIVATE , PROTECTED , INTERNAL y FINAL** . Cuando no se define ningún especificador de acceso, la propiedad es **PUBLIC** . Además, también se puede especificar un especificador de acceso para cada setter y getter. Esto tiene prioridad sobre el propio especificador de acceso de la propiedad.

Las propiedades son reconocibles por las siguientes características:

Especificador de acceso:

- <span style="color:orange">PUBLIC:</span> 
    - Corresponde a la especificación de modificador sin acceso.
- <span style="color:orange">PRIVATE:</span> 
    - El acceso a la propiedad está limitado solo al bloque de funciones.
- <span style="color:orange">PROTECTED:</span>
    - El acceso a la propiedad está limitado al programa o al bloque de función y sus derivados.
- <span style="color:orange">INTERNAL:</span>
    - El acceso a la propiedad está limitado al espacio de nombres, es decir, a la biblioteca.
- <span style="color:orange">FINAL:</span> 
    - No se permite sobrescribir la propiedad en un derivado del bloque de funciones. Esto significa que la propiedad no se puede sobrescribir ni extender en una subclase posiblemente existente.
    - Las propiedades pueden ser abstractas, lo que significa que una propiedad no tiene una implementación inicial y que la implementación real se proporciona en el bloque de funciones derivado.

Los pragmas son muy útiles para monitorear propiedades en modo en línea. Para esto, escríbalos en la parte superior de las declaraciones de propiedades (atributo 'monitoreo'):

{attribute 'monitoring := 'variable'}:  Al acceder a una propiedad, TwinCAT almacena el valor real en una variable y muestra el valor de esta última. Este valor puede volverse obsoleto si el código ya no accede a la propiedad.

{attribute 'monitoring' := 'call'}:  Cada vez que se muestra el valor, TwinCAT llama al código del descriptor de acceso Get. Cualquier efecto secundario, provocado por ese código, puede aparecer en el seguimiento.

***
### <span style="color:grey">Links:</span>

- 🔗 [Documentación de Codesys del Objeto propiedad](https://help.codesys.com/api-content/2/codesys/3.5.12.0/en/_cds_obj_property/#b08bdbd0d86c0a8640e00400511-id-5dbd3039bdbd0d85c0a8640e003d7982)

- 🔗 [Documentación de Beckhoff del Objeto propiedad](https://infosys.beckhoff.com/english.php?content=../content/1033/tc3_plc_intro/2530307467.html&id=)

- 🔗 [utilizing-properties,twincontrols.com](https://twincontrols.com/community/twincat-troubleshooting/utilizing-properties/#post-76)

- 🔗 [object-oriented-programming-in-programmable-logic-controllers-plc-whats-really-new,en.grse.de](https://en.grse.de/blog/object-oriented-programming-in-programmable-logic-controllers-plc-whats-really-new/)

- 🔗 [TC07.Beckhoff TwinCAT3 Function Block-Part2 Property.JP- DUT](https://www.youtube.com/watch?v=zbnb8K15YdI)
