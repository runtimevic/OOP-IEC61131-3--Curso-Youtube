## <span style="color:grey">Herencia:</span>
Los bloques de funciones son un medio excelente para mantener las secciones del programa separadas entre sí. Esto mejora la estructura del software y simplifica significativamente la reutilización. Anteriormente, ampliar la funcionalidad de un bloque de funciones existente siempre era una tarea delicada. Esto significó modificar el código o programar un nuevo bloque de funciones alrededor del bloque existente (es decir, el bloque de funciones existente se incrustó efectivamente dentro de un nuevo bloque de funciones). En el último caso, fue necesario crear todas las variables de entrada nuevamente y asignarlas a las variables de entrada para el bloque de funciones existente. Lo mismo se requería, en sentido contrario, para las variables de salida.

TwinCAT 3 y Codesys (IEC61131-3) introduce el concepto de herencia. La herencia es uno de los principios fundamentales de la programación orientada a objetos. La herencia implica derivar un nuevo bloque de funciones a partir de un bloque de funciones existente. A continuación, se puede ampliar el nuevo bloque. En la medida permitida por los especificadores de acceso del bloque de funciones principal, el nuevo bloque de funciones hereda todas las propiedades y métodos del bloque de funciones principal. Cada bloque de funciones puede tener cualquier número de bloques de funciones secundarios, pero solo un bloque de funciones principal. La derivación de un bloque de funciones se produce en la nueva declaración del bloque de funciones. El nombre del nuevo bloque de funciones va seguido de la palabra clave EXTENDS seguida del nombre del bloque de funciones principal. Por ejemplo:

```javascript
FUNCTION_BLOCK PUBLIC FB_NewEngine EXTENDS FB_Engine
```
El nuevo bloque de funciones derivado ( FB_NewEngine ) posee todas las propiedades y métodos de su padre ( FB_Engine ). Sin embargo, los métodos y las propiedades solo se heredan cuando el especificador de acceso lo permite.

El bloque de funciones secundario también hereda todas las variables **Locales**, **VAR_INPUT** , **VAR_OUTPUT** y **VAR_IN_OUT** del bloque de funciones principal. Este comportamiento no se puede modificar mediante especificadores de acceso.

Si los métodos o las propiedades del bloque de funciones principal se han declarado como PROTECTED, el bloque de funciones secundario ( FB_NewEngine ) podrá acceder a ellos, pero no desde fuera de FB_NewEngine .

La herencia se aplica solo a las POU de tipo FUNCTION_BLOCK.

### <span style="color:grey">Especificadores de acceso:</span>
Las declaraciones FUNCTION_BLOCK , FUNCTION o PROGRAM pueden incluir un especificador de acceso. Esto restringe el acceso y, en su caso, la capacidad de heredar.

- <span style="color:green">PUBLIC:</span>

Cualquiera puede llamar o crear una instancia de la POU. Además, si la POU es un FUNCTION_BLOCK , se puede usar para la herencia. No se aplican restricciones.

- <span style="color:green">INTERN:</span>

La POU solo se puede utilizar dentro de su propio espacio de nombres. Esto permite que las POU estén disponibles solo dentro de una determinada biblioteca, por ejemplo.

- <span style="color:green">FINAL:</span>

El FUNCTION_BLOCK no puede servir como un bloque de funciones principal. Los métodos y las propiedades de esta POU no se pueden heredar. FINAL solo está permitido para POU del tipo FUNCTION_BLOCK .

La configuración predeterminada donde no se define ningún especificador de acceso es PUBLIC. Los especificadores de acceso PRIVATE y PROTECTED no están permitidos en las declaraciones de POU.

Si planea utilizar la herencia, la declaración del bloque de funciones tendrá la siguiente estructura:

```javascript
FUNCTION_BLOCK <Access specifier> <Name> EXTENDS <Name basic function block>
```
### <span style="color:grey">Métodos de Sobrescritura:</span>
El nuevo FUNCTION_BLOCK FB_NewEngine , que se deriva de FB_Engine , puede contener propiedades y métodos adicionales. Por ejemplo, podemos agregar la propiedad Gear . Esta propiedad se puede utilizar para consultar y cambiar la marcha actual. Es necesario configurar getters y setters para esta propiedad.

Sin embargo, también debemos asegurarnos de que el parámetro nGear del método Start() se pase a esta propiedad. Debido a que el bloque de funciones principal FB_Engine no tiene acceso a esta nueva propiedad, se debe crear un nuevo método con exactamente los mismos parámetros en FB_NewEngine . Copiamos el código existente al nuevo método y agregamos nuevo código para que el parámetro nGear se pase a la propiedad Gear .

```javascript
METHOD PUBLIC Start
VAR_INPUT
  nGear : INT := 2;
  fVelocity : LREAL := 8.0;
END_VAR 
  
IF (fVelocity < MaxVelocity) THEN
  velocityInternal := fVelocity;
ELSE
  velocityInternal := MaxVelocity;
END_IF
Gear := nGear; // new
```
La línea 12 copia el parámetro nGear a la propiedad Gear.

Cuando un método o propiedad que ya está presente en el bloque de funciones principal se redefine dentro del bloque de funciones secundario, esto se denomina sobrescritura. El bloque de funciones FB_NewEngine sobrescribe el método Start() .

Por lo tanto, FB_NewEngine tiene la nueva propiedad Gear y sobrescribe el método Start() .

![Herencia](../imagenes/herencia.png)

```javascript
fbNewEngine.Start(1, 7.5);
```
llama al método Start() en FB_NewEngine, ya que este método ha sido redefinido (sobrescrito) en FB_NewEngine .

Mientras que:

```javascript
fbNewEngine.Stop();
```
llama al método Stop() desde FB_Engine . El método Stop() ha sido heredado por FB_NewEngine de FB_Engine .

***
### <span style="color:grey">Links:</span>

- 🔗 [stefanhenneken.net,iec-61131-3-methods-properties-and-inheritance](https://stefanhenneken.net/2017/04/23/iec-61131-3-methods-properties-and-inheritance/)
- 🔗 [Simple Codesys OOP - Inheritance](https://www.youtube.com/watch?v=ehwCe9C4gWQ)