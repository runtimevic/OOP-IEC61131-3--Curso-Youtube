### <span style="color:grey"> Palabra Clave Abstracto:</span>

### <span style="color:grey"> Concepto ABSTRACTO:</span>
La palabra clave ABSTRACT está disponible para bloques de funciones, métodos y propiedades. Permite la implementación de un proyecto PLC con niveles de abstracción.
La abstracción es un concepto clave de la programación orientada a objetos. Los diferentes niveles de abstracción contienen aspectos de implementación generales o específicos.

### <span style="color:grey">CONCEPTO ABSTRACTO 1:</span>
Disponible en TC3.1 Build 4024

### <span style="color:grey">Aplicación de la abstracción:</span>
Es útil implementar funciones básicas o puntos en común de diferentes clases en una clase básica abstracta. Se implementan aspectos específicos en subclases no abstractas.
El principio es similar al uso de una interfaz. Las interfaces corresponden a clases puramente abstractas que contienen sólo métodos y propiedades abstractas.
Una clase abstracta también puede contener métodos y propiedades no abstractos.

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

proyecto de la carpeta: 12_Concepto Keyword Abstract

### <span style="color:grey">Links de ABSTRACT:</span>
