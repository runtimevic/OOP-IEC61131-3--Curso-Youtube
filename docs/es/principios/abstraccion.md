### abstraccion

Abstraction is the process of hiding important information, showing only the most essential 
information. It reduces code complexity and isolates the impact of changes.
Abstraction can be understood from a real-life example: turning on a television must only 
require clicking on a button, as people don’t need to know or the process that it goes through.
Even though that process can be complex and important, there is no need for the user to know 
how it is implemented. The important information that isn’t required is hidden from the user, 
reducing code complexity, enhancing data hiding and reusability, thus making function 
blocks easier to implement and modify.

La palabra clave ABSTRACT está disponible para bloques de funciones, métodos y propiedades. Permite la implementación de un proyecto PLC con niveles de abstracción.

La abstracción es un concepto clave de la programación orientada a objetos. Los diferentes niveles de abstracción contienen aspectos de implementación generales o específicos.

### Aplicación de la abstracción:
Es útil implementar funciones básicas o puntos en común de diferentes clases en una clase básica abstracta. Se implementan aspectos específicos en subclases no abstractas.
El principio es similar al uso de una interfaz. Las interfaces corresponden a clases puramente abstractas que contienen sólo métodos y propiedades abstractas. Una clase abstracta también puede contener métodos y propiedades no abstractos.

Reglas para el uso de la palabra clave ABSTRACT
- No se pueden instanciar bloques de funciones abstractas.
- Los bloques de funciones abstractas pueden contener métodos y propiedades abstractos y no abstractos.
- Los métodos abstractos o las propiedades no contienen ninguna implementación (sólo la declaración).
- Si un bloque de función contiene un método o propiedad abstracta, debe ser abstracto.
- Los bloques de funciones abstractas deben extenderse para poder implementar los métodos o propiedades abstractos.
- Por lo tanto: un FB derivado debe implementar los métodos/propiedades de su FB básico o también debe definirse como abstracto.

***
- 🔗 [ABSTRACT,www.plccoder.com](https://www.plccoder.com/abstract/)

- 🔗 [ABSTRACION Concepto, Infosys Beckhoff](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/6413748235.html?id=2638086927809860687)

