### SUPER puntero:
cada bloque de funciones que se deriva de otro bloque de funciones tiene acceso a un puntero llamado SUPER . 
Esto se puede usar para acceder a elementos (métodos, propiedades, variables locales, etc.) desde el bloque de funciones principal.

En lugar de copiar el código del bloque de funciones principal al nuevo método, el puntero SUPER se puede usar para llamar al método desde el bloque de funciones  . Esto elimina la necesidad de copiar el código.

- [SUPER puntero Infosys Beckhoff](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528837771.html?id=5132996865500332085)


SUPER pointer
In the above example, we created a new Start() method in FB_NewEngine and copied the existing code from FB_Engine into the new method. This is not always possible, and it also runs counter to the principle of reuse.

Consequently, every function block which is derived from another function block has access to a pointer called SUPER. This can be used to access elements (methods, properties, local variables, etc.) from the parent function block.

Instead of copying code from the parent function block to the new method, the SUPER pointer can be used to call the method from the FB_Engine function block. This does away with the need to copy the code.

In the CFC editor, SUPER is called as follows:

The SUPER pointer always has to be written in upper case.