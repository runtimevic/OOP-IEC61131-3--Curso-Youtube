### interface:

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
caso, la implementación de los métodos en cada clase puede ser totalmente diferente. esto abre
muchos enfoques de programación poderosos:
- Las POU pueden llamar a una interfaz para ejecutar un método o acceder a una propiedad, sin saber cuál
clase o FB con el que se trata o cómo va a ejecutar la operación. 
La interfaz luego apunta a una clase o bloque de función que implementa la interfaz y la operación
es ejecutado;
- Los programadores pueden crear cajas de interruptores fácilmente personalizables usando polimorfismo.