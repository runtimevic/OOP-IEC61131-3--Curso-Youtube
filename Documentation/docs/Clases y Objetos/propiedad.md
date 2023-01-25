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
