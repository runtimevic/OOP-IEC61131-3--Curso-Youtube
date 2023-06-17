### <span style="color:grey">Access specifiers for methods:</span>
La declaración del método puede incluir un especificador de acceso opcional. Esto restringe el acceso al método.
### <span style="color:grey">Tipos de modificadores de acceso para el Método:</span>
- <span style="color:orange">PUBLIC:</span> 
	- Cualquiera puede llamar al método, no hay restricciones.
- <span style="color:orange">PRIVATE:</span> 
    - Son accesibles solo dentro de su propia Clase (Bloque de Función).
    - Sin acceso desde la clase heredada.
    - Sin acceso desde el programa principal, desde el MAIN.
- <span style="color:orange">PROTECTED:</span> 
    - Accesible desde dentro de su propia Clase.
    - Accesible desde clases heredadas.
    - El acceso está restringido,no se puede acceder desde el programa principal, desde el MAIN.
- <span style="color:orange">INTERNAL:</span> 
    - Solo se puede acceder al método desde el mismo espacio de nombres. Esto permite que los métodos estén disponibles solo dentro de una determinada biblioteca, por ejemplo.
    - El acceso está limitado al espacio de nombres (la biblioteca).
    
La configuración predeterminada donde no se define ningún especificador de acceso es PUBLIC .    
***
- <span style="color:orange">FINAL:(se puede añadir acompañado con alguno de los anteriores)</span> 
    - El método no puede ser sobrescrito por otro método. La sobrescritura de métodos se describe a continuación.
    - No se permite sobrescribir, en un derivado del bloque de funciones. 
    - Esto significa que no se puede sobrescribir/extender en una subclase posiblemente existente.

***
### <span style="color:grey">Link al Video de Youtube 005:</span>
- 🔗 [005 - OOP IEC 61131-3 PLC -- Objeto Metodo](https://youtu.be/fa0tUTICVF0)

