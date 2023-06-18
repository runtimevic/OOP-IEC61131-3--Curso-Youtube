### <span style="color:grey">abstraction:</span>

Abstraction is the process of hiding important information, showing only the most essential information.
It reduces the complexity of the code and isolates the impact of the changes.
Abstraction can be understood from an example of real life: turning on a television should only
They require clicking on a button, since people do not need to know the process that passes.
Although this process can be complex and important, it is not necessary for the user to know
how it is implemented.The important information that is not required is hidden for the user,
reducing the complexity of the code, improving the concealment of data and reuse, thus making the functions blocks
Be easier to implement and modify.

The key word ABSTRACT It is available for blocks of functions, methods and properties.It allows the implementation of a PLC project with levels of abstraction.

Abstraction is a key concept of object -oriented programming.Different levels of abstraction contain aspects of general or specific implementation.

### <span style="color:grey">Application of abstraction:</span>
It is useful to implement basic or common functions of different classes in an abstract basic class.Specific aspects are implemented in non -abstract subclasses.
The principle is similar to the use of an interface.The interfaces correspond to purely abstract classes that contain only abstract methods and properties.An abstract class can also contain non -abstract methods and properties.

Rules for the use of the keyword ABSTRACT:

- You cannot instantize blocks of abstract functions.
- Blocks of abstract functions can contain abstract and non -abstract methods and properties.
- Abstract methods or properties do not contain any implementation (only the declaration).
- If a function block contains an abstract method or property, it must be abstract.
- The blocks of abstract functions must be extended to be able to implement abstract methods or properties.
- Therefore: a derivative FB must implement the methods/properties of its basic FB or must also be defined as abstract.

### <span style="color:grey">Conclusion:</span>
Encapsulation is one of the 4 pillars of OOP.The encapsulation consists of grouping methods and properties in a block of functions and hiding and protecting data that are not necessary for the user.This helps us write solid and reusable code.
***
### <span style="color:grey">Links Abstraction:</span>
- 🔗 [ABSTRACT,www.plccoder.com](https://www.plccoder.com/abstract/)

- 🔗 [ABSTRACION Concepto, Infosys Beckhoff](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/6413748235.html?id=2638086927809860687)

