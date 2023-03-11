### ESTE puntero:

El puntero THIS está disponible para todos los bloques de funciones y apunta a la instancia de bloque de funciones actual. 
Este puntero es necesario siempre que un método contenga una variable local que oculte una variable en el bloque de funciones.

Una declaración de asignación dentro del método establece el valor de la variable local. 
Si queremos que el método establezca el valor de la variable local en el bloque de funciones, necesitamos usar el puntero THIS para acceder a él.

Al igual que con el puntero SUPER, el puntero THIS también debe estar siempre en mayúsculas.
***


### <span style="color:grey">Links THIS pointer:</span>

- [THIS puntero Infosys Beckhoff](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528843147.html?id=1252534934601716110)

THIS pointer
The THIS pointer is available to all function blocks and points to the current function block instance. This pointer is required whenever a method contains a local variable which obscures a variable in the function block.

An assignment statement within the method sets the value of the local variable. If we want the method to set the value of the local variable in the function block, we need to use the THIS pointer to access it.