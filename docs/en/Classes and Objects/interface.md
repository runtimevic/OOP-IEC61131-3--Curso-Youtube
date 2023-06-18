### <span style="color:grey">Interface:</span>

In object -oriented programming (OOP) in PLCS, an interface is a type of structure that defines a set of methods and properties that a class must implement.In other words, an interface defines a contract between different parts of the code to ensure that certain requirements are met and a coherent structure is maintained.In practical terms, this means that when a class is created that implements an interface, that class must provide the methods and properties defined in the interface.This allows different classes to share a common set of methods and properties and communicate with each other in a coherent way.For example, if you have an interface **"I_Sensor"** with the **methods:** **"readValue"**,**"Calibrate"** and **"Decalibrate"** and the **Properties:** **"Temperature"**, **"Consigna"** and **"Calibrated"** Any class that implements that interface must provide these three methods and the three properties.This ensures that any other part of the code that works with that class can trust that these methods and properties will be available.

![Interface](../images/I_Sensor.png)

- An interface is a class that contains methods and properties without implementation.
- The interface can be implemented in any kind, but that class must implement all its methods.
and properties.
- While inheritance is a "is a" relationship, interfaces can be described as "it behaves as" or
"have a relationship.
- Interfaces are objects that allow several different kinds to have something in common with
Less dependencies.Classes and functions blocks can implement several different interfaces.
One can think about the methods and properties of the interface as actions that mean different things
depending on who is executing them.For example, the word "run" means "to move at a speed
Faster than a walk "for a human being, but means" executing "for computers.
- The classes or blocks of functions that do not share similarities can implement the same interface.In this
Case, the implementation of the methods in each class can be totally different.This opens
Many powerful programming approaches:
- Pou can call an interface to execute a method or access a property, without knowing which
class or FB with which it is or how the operation will execute.
The interface then points to a class or function block that implements the interface and the operation
That is executed.
- Programmers can create easily customizable switch boxes using polymorphism.
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

***
### <span style="color:grey">Link to the Youtube Video 010:</span>
- 🔗 [010 - OOP IEC 61131-3 PLC -- Interface](https://youtu.be/ix0Amyg9RcU)