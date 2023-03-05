### polimorfismo

The concept of polymorphism is derived by the combination of two words: Poly (Many) and 
Morphism (Form). It refactors ugly and complex switch cases/case statements.
Object-Oriented PLC Programming
8
Polymorphism allows an object to change its appearance and performance depending on the 
practical situation in order to be able to carry out a particular task [10]. It can be either static or 
dynamic: static polymorphism occurs when the object’s type is defined by the compiler; 
dynamic polymorphism occurs when the type is determined during run-time, making it possible 
for a same variable to access different objects while the program is running.
A good example to explain polymorphism is a Swiss Army Knife (Figure 2.4):
Figure 2.4 - Swiss Army Knife
A Swiss Army Knife is a single tool that includes a bunch of resources that can be used to solve
different issues. Selecting the proper tool, a Swiss Army Knife can be used to efficiently
perform a certain set of valuable tasks. In the dual way, a simple adder block that adapts itself 
to cope with, for instance, int, float, string, and time data types is an example of a polymorphic 
programming resource.

***

¿Como conseguir el Polimorfismo?

El polimorfismo se puede obtener gracias a las Interfaces y/o las Clases Abstractas.

.Interface: (INTERFACE)
- Son un **contrato que obliga** a una clase a **implementar** las **propiedades** y/o **métodos** definidos.
- Son una plantilla (sin lógica).

.Clases Abstractas: (ABSTRACT)
- Son Clases que no se pueden instanciar, solo pueden ser implementadas a través de la herencia.

- Diferencias:

    | Clases abstractas | Interfaces | 
    | :--- | :--- |     
    | 1.- Limitadas a una sola implementación.   | 1. No tiene limitación de implementación.     | 
    | 2.- Pueden definir comportamiento base.     | 2. Expone propiedades y métodos abstractos (sin lógica).     |
***    
### <span style="color:grey">Links Polimorfismo:</span>

- 🔗 [polymorphism, www.plccoder.com](https://www.plccoder.com/polymorphism/)

- 🔗 [abstract, www.plccoder.com](https://www.plccoder.com/abstract/)
