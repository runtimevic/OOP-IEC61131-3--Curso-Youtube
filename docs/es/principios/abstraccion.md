### <span style="color:grey">ABSTRACCION:</span>

La Abstracción es el proceso de ocultar información importante, mostrando solo lo información más esencial. 
Reduce la complejidad del código y aísla el impacto de los cambios.
La abstracción se puede entender a partir de un ejemplo de la vida real: encender un televisor solo debe
requieren hacer clic en un botón, ya que las personas no necesitan saber el proceso por el que pasa.
Aunque ese proceso puede ser complejo e importante, no es necesario que el usuario sepa
cómo se implementa. La información importante que no se requiere está oculta para el usuario,
reduciendo la complejidad del código, mejorando la ocultación de datos y la reutilización, haciendo así que los Bloques de Funciones
sean más fáciles de implementar y modificar.

La palabra clave ABSTRACT está disponible para bloques de funciones, métodos y propiedades. Permite la implementación de un proyecto PLC con niveles de abstracción.

La abstracción es un concepto clave de la programación orientada a objetos. Los diferentes niveles de abstracción contienen aspectos de implementación generales o específicos.

### <span style="color:grey">Aplicación de la abstracción:</span>
Es útil implementar funciones básicas o puntos en común de diferentes clases en una clase básica abstracta. Se implementan aspectos específicos en subclases no abstractas.
El principio es similar al uso de una interfaz. Las interfaces corresponden a clases puramente abstractas que contienen sólo métodos y propiedades abstractas. Una clase abstracta también puede contener métodos y propiedades no abstractos.

Reglas para el uso de la palabra clave ABSTRACT:

- No se pueden instanciar bloques de funciones abstractas.
- Los bloques de funciones abstractas pueden contener métodos y propiedades abstractos y no abstractos.
- Los métodos abstractos o las propiedades no contienen ninguna implementación (sólo la declaración).
- Si un bloque de función contiene un método o propiedad abstracta, debe ser abstracto.
- Los bloques de funciones abstractas deben extenderse para poder implementar los métodos o propiedades abstractos.
- Por lo tanto: un FB derivado debe implementar los métodos/propiedades de su FB básico o también debe definirse como abstracto.
***

### <span style="color:grey">Links Abstracción:</span>
- 🔗 [ABSTRACT,www.plccoder.com](https://www.plccoder.com/abstract/)

- 🔗 [ABSTRACION Concepto, Infosys Beckhoff](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/6413748235.html?id=2638086927809860687)
***
### <span style="color:grey">Link al Video de Youtube 020:</span>
- 🔗 [020 - OOP IEC 61131-3 PLC -- 4 Pilares OOP - Abstracción](https://youtu.be/uUZbgOKnSx4)

