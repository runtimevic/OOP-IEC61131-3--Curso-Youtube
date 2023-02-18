### <span style="color:grey">Especificadores de acceso para los Metodos:</span>
La declaración del método puede incluir un especificador de acceso opcional. Esto restringe el acceso al método.
### <span style="color:grey">Tipos de modificadores de acceso para el Método:</span>
- <span style="color:orange">PUBLIC:</span> 
	- Cualquiera puede llamar al método, no hay restricciones.
- <span style="color:orange">PRIVATE:</span> 
	- El método está disponible solo dentro de la POU. No se puede llamar desde fuera de la POU.
    - Son accesibles dentro de la clase.
    - El acceso está restringido al bloque de funciones o al programa, respectivamente.
- <span style="color:orange">PROTECTED:</span> 
    - Solo su propia POU o las POU derivadas de ella pueden acceder al método. La derivación se analiza a continuación.
    - Son accesibles a través de la herencia.
    - El acceso está restringido al programa o al bloque de función y sus derivados respectivamente.
- <span style="color:orange">INTERNAL:</span> 
    - Solo se puede acceder al método desde el mismo espacio de nombres. Esto permite que los métodos estén disponibles solo dentro de una determinada biblioteca, por ejemplo.
    - El acceso está limitado al espacio de nombres (la biblioteca).
- <span style="color:orange">FINAL:</span> 
    - El método no puede ser sobrescrito por otro método. La sobrescritura de métodos se describe a continuación.
    - No se permite sobrescribir, en un derivado del bloque de funciones. 
    - Esto significa que no se puede sobrescribir/extender en una subclase posiblemente existente.

La configuración predeterminada donde no se define ningún especificador de acceso es PUBLIC .