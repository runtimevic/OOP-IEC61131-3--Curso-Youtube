### <span style="color:grey">METHOD:</span>

Los Métodos dividen la clase (bloque de funciones) en funciones más pequeñas que se pueden ejecutar en
llamada. Solo trabajarán con los datos que necesitan e ignorarán cualquier dato redundante que
puede existir en un determinado bloque de funciones.

Los métodos pueden acceder y manipular las variables internas de la clase principal, pero también pueden usar
variables propias a las que la clase principal no puede acceder (a menos que sean de salida la
variable).

Además, los métodos son una forma mucho más eficiente de ejecutar un programa porque, al dividir una
función en varios métodos, el usuario evita ejecutar todo el POU cada vez,
ejecutar solo pequeñas porciones de código siempre que sea necesario llamarlas. 

Esto es un muy buena manera de evitar errores y corrupción de datos.
Los métodos también tienen un nombre, lo que significa que estas porciones de código se pueden identificar por su
propósito en lugar de las variables que manipulan, mejorando así la lectura de código, comprensión y la solución de problemas.

La abstracción juega un papel importante aquí, si los programadores desean implementar el código, 
solo necesitan llamar al método.

La solución de problemas también se convierte en
más simple: entonces el programador no necesita buscar cada instancia del código,
solo necesitan verificar el método correspondiente.
A diferencia de la clase base, los métodos usan la memoria temporal del controlador: los datos son volátiles, ya que
las variables solo mantendrán sus valores mientras se ejecuta el método. Si se suponen valores que deben
mantenerse entre ciclos de ejecución, entonces la variable debe almacenarse en la clase base o en
algún otro lugar que retendrá los valores de un ciclo al otro (como la 
lista de variables globales -- GVL), o también se puede utilizar la variable de tipo VAR_INST.
***
Por lo tanto, una declaración de Método tiene la siguiente estructura:
```typescript
METHOD <Access specifier> <Name> : <Datatype return value>
```
No es obligatorio que un Método deba devolver un valor...
***
### <span style="color:grey">Ejemplo de declaración de METHOD:</span>
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
### <span style="color:grey">Links del Objeto Metodo:</span>

- 🔗 [Documentación Codesys del Objeto método](https://help.codesys.com/api-content/2/codesys/3.5.14.0/en/_cds_obj_method/#e4507ebe4233ac0c0a8640e00a37b12-id-3375759d0dd23b38c0a864630d4cd159)

- 🔗 [Documentación de Beckhoff del Objeto método](https://infosys.beckhoff.com/english.php?content=../content/1033/tc3_plc_intro/2530307467.html&id=)

- 🔗 [TC08.Beckhoff TwinCAT3 Function Block-Part3 Method.JP](https://www.youtube.com/watch?v=csr11XOva_w)

- 🔗 [Tutorial #18: Einstieg in die objektorientierte Programmierung mit CoDeSys - Teil 1: Methoden](https://www.youtube.com/watch?v=cLDHvmVY6LA)

***
### <span style="color:grey">Link al Video de Youtube 005:</span>
- 🔗 [005 - OOP IEC 61131-3 PLC -- Objeto Metodo](https://youtu.be/fa0tUTICVF0)

