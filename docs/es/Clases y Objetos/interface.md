### <span style="color:grey">Interface:</span>

En la programación orientada a objetos (OOP) en PLCs, una interfaz es un tipo de estructura que define un conjunto de métodos y propiedades que una clase debe implementar. En otras palabras, una interfaz define un contrato entre diferentes partes del código para asegurar que se cumplan ciertos requisitos y se mantenga una estructura coherente. En términos prácticos, esto significa que cuando se crea una clase que implementa una interfaz, esa clase debe proporcionar los métodos y propiedades definidos en la interfaz. Esto permite que diferentes clases compartan un conjunto común de métodos y propiedades y se comuniquen entre sí de manera coherente. Por ejemplo, si tienes una interfaz **"I_Sensor"** con los **métodos:** **"LeerValor"**,**"Calibrar"** y **"Descalibrar"** y las **Propiedades:** **"Temperatura"**, **"Consigna"** y **"Calibrado"** cualquier clase que implemente esa interfaz debe proporcionar esos tres métodos y las tres propiedades. Esto asegura que cualquier otra parte del código que trabaje con esa clase pueda confiar en que esos métodos y propiedades estarán disponibles.

![Interface](../imagenes/I_Sensor.png)

- Una interfaz es una clase que contiene métodos y propiedades sin implementación. 
- La interfaz se puede implementar en cualquier clase, pero esa clase debe implementar todos sus métodos.
y propiedades.
- Si bien la herencia es una relación "es un", las interfaces se pueden describir como "se comporta como" o
“tiene una” relación.
- Las interfaces son objetos que permiten que varias clases diferentes tengan algo en común con
menos dependencias. Las clases y los bloques de funciones pueden implementar varias interfaces diferentes.
Uno puede pensar en los métodos y propiedades de la interfaz como acciones que significan cosas diferentes
dependiendo de quién los esté ejecutando. Por ejemplo, la palabra "Correr" significa "mover a una velocidad
más rápido que un paseo” para un ser humano, pero significa “ejecutar” para las computadoras.
- Las clases o bloques de funciones que no comparten similitudes pueden implementar la misma interfaz. En este
caso, la implementación de los métodos en cada clase puede ser totalmente diferente. Esto abre
muchos enfoques de programación poderosos:
- Las POU pueden llamar a una interfaz para ejecutar un método o acceder a una propiedad, sin saber cuál
clase o FB con el que se trata o cómo va a ejecutar la operación. 
La interfaz luego apunta a una clase o bloque de función que implementa la interfaz y la operación
que es ejecutado.
- Los programadores pueden crear cajas de interruptores fácilmente personalizables usando polimorfismo.
***
### <span style="color:grey">Links Interface:</span>

- 🔗 [Codesys Comando 'Implementar interfaces'](https://help.codesys.com/api-content/2/codesys/3.5.12.0/en/_cds_cmd_implement_interfaces/)

- 🔗 [Codesys_3.5.13.0 Objeto Interface](https://help.codesys.com/api-content/2/codesys/3.5.13.0/en/_cds_obj_interface/)

- 🔗 [Codesys_3.5.14.0 Objeto Interface](https://help.codesys.com/api-content/2/codesys/3.5.14.0/en/_cds_obj_interface/)

- 🔗 [Codesys Implementando Interfaces](https://help.codesys.com/api-content/2/codesys/3.5.12.0/en/_cds_implementing_interface/)

- 🔗 [Beckhoff Objeto Interface](https://infosys.beckhoff.com/english.php?content=../content/1033/tc3_plc_intro/4256428299.html&id=)

- 🔗 [Beckhoff Implementando Interfaces](https://infosys.beckhoff.com/english.php?content=../content/1033/tc3_plc_intro/4262436875.html&id=)

- 🔗 [Extender Interfaces, Infosys Beckhoff](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2527343499.html?id=365591094627259992)

- 🔗 [TC09.Beckhoff TwinCAT3 Function Block-Part4 Interface.JP](https://www.youtube.com/watch?v=SAGchtGi3-o)

- 🔗 [Tutorial #20: Einstieg in die objektorientiert Programmierung mit CoDeSys - Teil 3: Interfaces](https://www.youtube.com/watch?v=dKkBzZReIBg)

***
### <span style="color:grey">Link al Video de Youtube 010:</span>
- 🔗 [010 - OOP IEC 61131-3 PLC -- Interface](https://youtu.be/ix0Amyg9RcU)