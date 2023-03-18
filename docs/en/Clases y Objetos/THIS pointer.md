![help](../imagenes/ayuda.png)

![help](../imagenes/help.jfif)

![help](../imagenes/helpme.jfif)

THIS pointer
The THIS pointer is available to all function blocks and points to the current function block instance. This pointer is required whenever a method contains a local variable which obscures a variable in the function block.

An assignment statement within the method sets the value of the local variable. If we want the method to set the value of the local variable in the function block, we need to use the THIS pointer to access it.