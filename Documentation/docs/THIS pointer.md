### ESTE puntero:

El puntero THIS está disponible para todos los bloques de funciones y apunta a la instancia de bloque de funciones actual. 
Este puntero es necesario siempre que un método contenga una variable local que oculte una variable en el bloque de funciones.

Una declaración de asignación dentro del método establece el valor de la variable local. 
Si queremos que el método establezca el valor de la variable local en el bloque de funciones, necesitamos usar el puntero THIS para acceder a él.

Al igual que con el puntero SUPER, el puntero THIS también debe estar siempre en mayúsculas.