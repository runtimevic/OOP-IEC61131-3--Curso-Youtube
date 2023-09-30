### <span style="color:grey"> Polimorfismo:</span>

El concepto de polimorfismo se deriva de la combinación de dos palabras: Poly (Muchos) y Morfismo (Forma).
Refactoriza casos de cambio/declaraciones de casos feos y complejos.
El polimorfismo permite que un objeto cambie su apariencia y desempeño dependiendo de la
situación práctica para poder realizar una determinada tarea. 
Puede ser estático o dinámico:

- El polimorfismo estático ocurre cuando el compilador define el tipo de objeto;
- El polimorfismo dinámico se produce cuando el tipo se determina durante el tiempo de ejecución, lo que hace posible
para que una misma variable acceda a diferentes objetos mientras el programa se está ejecutando.

### <span style="color:grey"> Ejemplos de Polimorfismo:</span>

- Un buen ejemplo para explicar el polimorfismo es una navaja suiza.
Una navaja suiza es una herramienta única que incluye un montón de recursos que se pueden utilizar para resolver
problemas diferentes. Al seleccionar la herramienta adecuada, se puede utilizar una navaja suiza para
realizar un determinado conjunto de tareas valiosas.

- De la manera dual, otro ejemplo podria ser un bloque sumador simple que se adapta para hacer frente a, 
por ejemplo, los tipos de datos int, float, string y time es un ejemplo de un polimórfico recurso de programación.
***

### <span style="color:grey">¿Como conseguir el Polimorfismo?</span>

El polimorfismo se puede obtener gracias a las Interfaces y/o las Clases Abstractas.

- <span style="color:orange"><font size="4">Interface: (INTERFACE)</font></span>

    - Son un **contrato que obliga** a una clase a **implementar** las **propiedades** y/o **métodos** definidos.
    - Son una plantilla (sin lógica).

- <span style="color:orange"><font size="4">Clases Abstractas: (ABSTRACT)</font></span>

    - Son Clases que no se pueden instanciar, solo pueden ser implementadas a través de la herencia.

- <span style="color:orange"><font size="4">Diferencias:</font></span>

    | Clases abstractas | Interfaces | 
    | :--- | :--- |     
    | 1.- Limitadas a una sola implementación.   | 1. No tiene limitación de implementación.     | 
    | 2.- Pueden definir comportamiento base.     | 2. Expone propiedades y métodos abstractos (sin lógica).
    
Tambien se puede conseguir el Polimorfismo por Referencia y/o por Punteros:

- <span style="color:orange"><font size="4">Referencia: (REFERENCE)</font></span>

- <span style="color:orange"><font size="4">Puntero: (POINTER)</font></span>
***
### <span style="color:grey">Tipos de Polimorfismo:</span>
- <span style="color:orange">Paramétrico:</span>  
    - El Polimorfismo **Paramétrico** va ocurrir cuando definamos en una clase varios metodos que van a tener el mismo nombre pero diferentes parametros. La cantidad y tipos de parametros es la diferencia.
     
- <span style="color:orange">Sobrecarga:</span>
    - El Polimorfismo por **Sobrecarga** va a haber un comportamiento diferente dependiendo de los parametros que se han recibido. Lo vamos a encontrar cuando distintas clases contienen metodos con el mismo nombre pero con un comportamiento diferente.

- Como Novedad En TwinCAT build 3.1.4026, y en Codesys 3.5 SP16 se pueden declarar parametros de entrada con inicialización con esto no sera obligario al llamar al objeto que instancia dicha clase poner dicho pametro de entrada en la llamada se puede obviar, con esto no conseguimos totalmente un polimorfismo paramétrico ya que no podemos tener el mismo nombre de metodo pero con diferentes parametros, pero al menos es un pequeño avance...
***     
### <span style="color:grey">Links Polimorfismo:</span>

- 🔗 [polymorphism, www.plccoder.com](https://www.plccoder.com/polymorphism/)

- 🔗 [abstract, www.plccoder.com](https://www.plccoder.com/abstract/)

- 🔗 [stefanhenneken.net,iec-61131-3-methods-properties-and-inheritance](https://stefanhenneken.net/2017/04/23/)

- 🔗 [AT&U, CODESYS - Runtime polymorphism using inheritance (OOP)](https://www.youtube.com/watch?v=oxwkeLggtnM)

- 🔗 [AT&U,CODESYS - Runtime polymorphism using an ITF (OOP)](https://www.youtube.com/watch?v=dcSW0X4gM98)
***
### <span style="color:grey">Link al Video de Youtube 022:</span>
- 🔗 [022 - OOP IEC 61131-3 PLC -- 4 Pilares OOP - Polimorfismo](https://youtu.be/KIU-Vm11CEc)
