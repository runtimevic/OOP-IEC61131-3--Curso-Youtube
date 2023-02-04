### SUPER puntero:
cada bloque de funciones que se deriva de otro bloque de funciones tiene acceso a un puntero llamado SUPER . 
Esto se puede usar para acceder a elementos (métodos, propiedades, variables locales, etc.) desde el bloque de funciones principal.

En lugar de copiar el código del bloque de funciones principal al nuevo método, el puntero SUPER se puede usar para llamar al método desde el bloque de funciones  . Esto elimina la necesidad de copiar el código.