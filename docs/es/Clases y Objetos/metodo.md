### <span style="color:grey">Metodos:</span>

Los Métodos dividen la clase o el bloque de funciones en funciones más pequeñas que se pueden ejecutar en
llamada. Solo trabajarán con los datos que necesitan e ignorarán cualquier dato redundante que
puede existir en un determinado bloque de funciones.

Los métodos pueden acceder y manipular las variables internas de la clase principal, pero también pueden usar
variables propias a las que la clase principal no puede acceder (a menos que sean de salida)
variable).
Además, los métodos son una forma mucho más eficiente de ejecutar un programa porque, al dividir una
función en varios métodos, el usuario evita ejecutar todo el POU cada vez,
ejecutar solo pequeñas porciones de código siempre que sea necesario llamarlas. Esto es un
muy buena manera de evitar errores y corrupción de datos.
Los métodos también tienen un nombre, lo que significa que estas porciones de código se pueden identificar por su
propósitos en lugar de las variables que manipulan, mejorando así la lectura de código y
solución de problemas.

La abstracción juega un papel importante aquí, si los programadores desean implementar el código, 
solo necesitan llamar al método. La solución de problemas también se convierte en
más simple: entonces el programador no necesita buscar cada instancia del código,
solo necesitan verificar el método correspondiente.
A diferencia de la clase base, los métodos usan la memoria temporal del controlador: los datos son volátiles, ya que
las variables solo mantendrán sus valores mientras se ejecuta el método. Si se suponen valores que deben
mantenerse entre ciclos de ejecución, entonces la variable debe almacenarse en la clase base o en
algún otro lugar que retendrá los valores de un ciclo al otro (como la variable global
lista).
***
Por lo tanto, una declaración de Método tiene la siguiente estructura:
```typescript
METHOD <Access specifier> <Name> : <Datatype return value>
```
No es obligatorio que un Método deba devolver un valor...
***
### <span style="color:grey">Especificadores de acceso para los Metodos:</span>
La declaración del método puede incluir un especificador de acceso opcional. Esto restringe el acceso al método.

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
***
- Ejemplos de declaración de METHODS:
```javascript
METHOD Method1 : BOOL
VAR_INPUT
    nIn1  : INT;
    bIn2  : BOOL;
END_VAR
VAR_OUTPUT
    fOut1 : REAL;
    sOut2 : STRING;
END_VAR
```
***
!!!!!!!!!!!!! HAY QUE MIRAR QUE VARIABLES SE PUEDEN DECLARAR EN EL METODO !!!!!!!!!!!!!!!

- [Local Variables - VAR](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528755083.html)
- [Input Variables - VAR_INPUT](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528760459.html)
- [Output Variables - VAR_OUTPUT](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528765835.html)
- [Input/Output Variables - VAR_IN_OUT, VAR_IN_OUT CONSTANT](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528771211.html)

- [Temporary Variable - VAR_TEMP](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528781963.html)
- [Static Variables - VAR_STAT](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528787339.html)
- [External Variables - VAR_EXTERNAL](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528792715.html)
- [Instance Variables - VAR_INST](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528798091.html)
- [Remanent Variables - PERSISTENT, RETAIN](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528803467.html)
- [SUPER](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528837771.html)
- [THIS](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528843147.html)
- [Variable types - attribute keywords](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528848523.html)
    - [RETAIN: for remanent variables of type RETAIN](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528803467.html)
    - [PERSISTENT: for remanent variables of type PERSISTENT](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528803467.html)
    - [CONSTANT: for constants](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2529284235.html#2529371275)

***
- 🔗 [Documentación Codesys del Objeto método](https://help.codesys.com/api-content/2/codesys/3.5.14.0/en/_cds_obj_method/#e4507ebe4233ac0c0a8640e00a37b12-id-3375759d0dd23b38c0a864630d4cd159)

- 🔗 [Documentación de Beckhoff del Objeto método](https://infosys.beckhoff.com/english.php?content=../content/1033/tc3_plc_intro/2530307467.html&id=)
