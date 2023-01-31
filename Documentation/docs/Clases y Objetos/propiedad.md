### propiedades

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

🔗[Documentación de Codesys del Objeto propiedad](https://help.codesys.com/api-content/2/codesys/3.5.12.0/en/_cds_obj_property/#b08bdbd0d86c0a8640e00400511-id-5dbd3039bdbd0d85c0a8640e003d7982)

🔗[Documentación de Beckhoff del Objeto propiedad](https://infosys.beckhoff.com/english.php?content=../content/1033/tc3_plc_intro/2530307467.html&id=)

- https://twincontrols.com/community/twincat-troubleshooting/utilizing-properties/#post-76
