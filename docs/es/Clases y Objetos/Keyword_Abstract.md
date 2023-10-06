### <span style="color:grey"> Palabra Clave Abstracto:</span>

### <span style="color:grey"> Concepto ABSTRACTO:</span>
La palabra clave ABSTRACT está disponible para bloques de funciones, métodos y propiedades. Permite la implementación de un proyecto PLC con niveles de abstracción.
La abstracción es un concepto clave de la programación orientada a objetos. Los diferentes niveles de abstracción contienen aspectos de implementación generales o específicos.

### <span style="color:grey">Disponibilidad ABSTRACTO:</span>
Ya estaba disponible en CODESYS, pero con el lanzamiento de TwinCAT 4024 ahora también está disponible en TwinCAT: la palabra clave ABSTRACT. (Disponible en TC3.1 Build 4024).

### <span style="color:grey">Aplicación de la abstracción:</span>
Es útil implementar funciones básicas o puntos en común de diferentes clases en una clase básica abstracta. Se implementan aspectos específicos en subclases no abstractas.
El principio es similar al uso de una interfaz. Las interfaces corresponden a clases puramente abstractas que contienen sólo métodos y propiedades abstractas.
Una clase abstracta también puede contener métodos y propiedades no abstractos.

La abstracción y el uso de la palabra clave abstract es una práctica común en OOP y muchos lenguajes de nivel superior como C# lo admiten. A menudo se considera como el cuarto pilar de la programación orientada a objetos. 

### <span style="color:grey">¿Por qué necesitamos la abstracción?</span>
Para comprender por qué la abstracción es tan importante en la programación orientada a objetos, volvamos rápidamente a la definición de abstracción. La abstracción consiste en ocultar al usuario detalles de implementación innecesarios y centrarse en la funcionalidad.

Considere un bloque de funciones que implementa una funcionalidad básica de celda de carga. Para usar esto, todo lo que necesitamos saber es que necesita una señal de entrada sin procesar y un factor de escala, y nos proporcionará un valor de salida en Newton. No necesitamos saber cómo se convierte, filtra y escala el valor de salida. Deja que alguien más se preocupe por eso. No es de influencia en nuestro programa. Solo trabajaremos con una interfaz simple de una celda de carga.

Es bueno saber que el uso de abstracciones está estrechamente relacionado con el principio de inversión de dependencia,  uno de los principios SOLID . Esto se vuelve especialmente importante cuando comienzas a trabajar con pruebas unitarias.

### <span style="color:grey">Reglas para el uso de la palabra clave ABSTRACT:</span>

- Los bloques de funciones abstractas no se pueden instanciar.
- Los bloques de funciones abstractas pueden contener métodos y propiedades abstractos y no abstractos.
- Los métodos abstractos o las propiedades no contienen ninguna implementación (solo la declaración).
- Si un bloque de funciones contiene un método o propiedad abstracta, debe ser abstracta.
- Los bloques de funciones abstractas deben extenderse para poder implementar los métodos o propiedades abstractas.
Por lo tanto: Un FB derivado debe implementar los métodos / propiedades de su FB básico o también debe definirse como abstracto.
Muestra
Clase básica abstracta:
```javascript
FUNCTION_BLOCK ABSTRACT FB_System_Base
```
Los puntos en común de todos los módulos del sistema se implementan en esta clase básica abstracta. Contiene la propiedad no abstracta "nSystemID" y el método abstracto "Execute" para esto:
```javascript
PROPERTY nSystemID : UINT
```
```javascript
METHOD ABSTRACT Execute
```
mientras que la implementación de "nSystemID" es la misma para todos los sistemas, la implementación del método "Execute" difiere para los sistemas individuales.

Subclase no abstracta:
```javascript
FUNCTION_BLOCK FB_StackSystem EXTENDS FB_System_Base
```
Las clases no abstractas que se derivan de la clase básica se implementan para los sistemas específicos. Esta subclase representa una pila. Dado que no es abstracto, debe implementar el método "Execute" que define la ejecución específica de la pila:
```javascript
METHOD Execute
```
### <span style="color:grey">Ejemplo de Demostracion de la palabra clave ABSTRACT en TwinCAT:</span>

- 🔗 [The ABSTRACT keyword, www.plccoder.com ](https://www.plccoder.com/abstract/)

### <span style="color:grey">Links de ABSTRACT:</span>

- 🔗 [ABSTRACT concept, infosys.beckhoff.com](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/6413748235.html?id=2638086927809860687)
- 🔗 [The ABSTRACT keyword, www.plccoder.com ](https://www.plccoder.com/abstract/)

- 🔗 [Tutorial #21: Einstieg in die objektorientierte Programmierung mit CoDeSys - Teil 4: Final/Abstract](https://www.youtube.com/watch?v=7YwMUOjem80)

***
### <span style="color:grey">Link al Video de Youtube 012:</span>
- 🔗 [012 - OOP IEC 61131-3 PLC -- Abstract](https://youtu.be/-Jq0jg0foo4)