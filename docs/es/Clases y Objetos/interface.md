### <span style="color:grey">Interface:</span>

Una interfaz es una clase que contiene métodos y propiedades sin implementación. 
La interfaz se puede implementar en cualquier clase, pero esa clase debe implementar todos sus métodos.
y propiedades.

Si bien la herencia es una relación "es un", las interfaces se pueden describir como "se comporta como" o
“tiene una” relación.

Las interfaces son objetos que permiten que varias clases diferentes tengan algo en común con
menos dependencias. Las clases y los bloques de funciones pueden implementar varias interfaces diferentes.
Uno puede pensar en los métodos y propiedades de la interfaz como acciones que significan cosas diferentes
dependiendo de quién los esté ejecutando. Por ejemplo, la palabra "Correr" significa "mover a una velocidad
más rápido que un paseo” para un ser humano, pero significa “ejecutar” para las computadoras.

Las clases o bloques de funciones que no comparten similitudes pueden implementar la misma interfaz. En este
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

- 🔗 [Codesys Objeto Interface](https://help.codesys.com/api-content/2/codesys/3.5.13.0/en/_cds_obj_interface/)

- 🔗 [Codesys Implementando Interfaces](https://help.codesys.com/api-content/2/codesys/3.5.12.0/en/_cds_implementing_interface/)

- 🔗 [Beckhoff Objeto Interface](https://infosys.beckhoff.com/english.php?content=../content/1033/tc3_plc_intro/4256428299.html&id=)

- 🔗 [Beckhoff Implementando Interfaces](https://infosys.beckhoff.com/english.php?content=../content/1033/tc3_plc_intro/4262436875.html&id=)

- 🔗 [Extender Interfaces, Infosys Beckhoff](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2527343499.html?id=365591094627259992)

- 🔗 [TC09.Beckhoff TwinCAT3 Function Block-Part4 Interface.JP](https://www.youtube.com/watch?v=SAGchtGi3-o)