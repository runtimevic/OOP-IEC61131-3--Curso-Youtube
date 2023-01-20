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
.modificadores de acceso: 
- <span style="color:orange">public:</span> son accesibles luego de instanciar la clase.
- <span style="color:orange">private:</span> son accesibles dentro de la clase.
- <span style="color:orange">protected:</span> son accesibles a través de la herencia.
- <span style="color:orange">internal:</span>
***
.Propiedades: Getters & Setters

para modificar directamente nuestras propiedades lo que se busca es que se haga a través de los metodos Getters y Setters, el cual varía la escritura según el lenguaje pero el concepto es el mismo.
***
.Relaciones:

Vamos a ver 2 tipos de relaciones:

- Asociación.
    - <span style="color:orange">De uno a uno:</span> Una clase mantiene una **asociación de a uno** con otra clase.
    - <span style="color:orange">De uno a muchos:</span> Una clase mantiene una asociación con otra clase **a través de una colección**.
    - <span style="color:orange">De muchos a muchos:</span> La **asociación se da en ambos lados** a través de una colección.
- Colaboración.
    - La colaboración se da **a través de una referencia de una clase** con el fin de **lograr un cometido**. 