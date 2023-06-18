### <span style="color:grey">DESIGN PATTERNS:</span>

![Design Patterns](../imagenes/DesignPatterns.PNG)

Design patterns are general and reusable solutions for common problems found in software programming.In object -oriented programming, there are many design patterns that can be applied to improve the modularity, flexibility and maintenance of the code.
Some examples of design patterns that can be applied in the PLCs programming include the Singleton pattern, the pattern Factory Method, the observer pattern and the Strategy pattern.
For example, the Singleton pattern is used to ensure that there is only an instance of a specific class throughout the program.This can be useful in PLCs programming when you want to ensure that there is only one active instance of the object that controls a certain process or device.
The Factory Method pattern is used to create instances of objects without explicitly specifying the specific class to be instant.This can be useful in PLCs programming when you want to create objects according to the specific needs of the program.
The Observer pattern is used to establish a relationship one to many between objects, so that when an object changes its state, all related objects are automatically notified.This pattern can be very useful in PLCs programming to establish relationships between different system components, such as sensors and actuators.The Strategy pattern is used to define a set of interchangeable algorithms, and then encapsulate each as an object.This pattern can be useful in PLCs programming when you want to dynamically change the behavior of the system according to environmental conditions.
In summary, design patterns are a very useful tool to improve code quality in PLCs programming and can be successfully applied in object -oriented programming for PLCs.

``` text
"Design patterns are
descriptions of objects and classes
connected to
solve a design problem
general in a particular context ”.
- Gang of Four
```

![Patrones_de_Diseño_Creacional](../images/Patrones_de_Dise%C3%B1o_Creacional.PNG)

![Patrones_de_Diseño_Estructural](../images/Patrones_de_Dise%C3%B1o_Estructural.PNG)

![Patrones_de_Diseño_de_Comportamiento](../images/Patrones_de_Dise%C3%B1o_de_Comportamiento.PNG)

![Design_patterns](../images/Design_patterns.jpg)

![Design_patterns_15](../images/Design_Patterns.PNG)

![Design_Patterns_Use_Cases_6](../images/)

Classification according to its purpose:
Design patterns were originally classified into three groups:

- Creatives.
- Structural.
- Behavior.

Classification according to its scope:

- Class: based on the inheritance of classes.
- Object: Based on the dynamic use of objects.

### Creative patterns:

- Creation patterns abstract how objects are created, so that it allows classes to be created genericly by moving the decision of what classes to create or how to create them.
But design patterns are directly applicable concepts in software production, any abstraction does not remain in the air as an entelechy that only serves to give speeches, like this:
Depending on where this decision is displaced, there is talk of class patterns (it uses inheritance to determine the creation of the instances, that is, in the constructors of the classes) or object patterns (it is in methods of the created objects where theclass)

-	Class creation patterns:
    - Abstract factory
    - Builder
- Object creation patterns:
    - Factory method
    -	Prototype
    - Singleton
    - Object pool


- Builder*
- Singleton *
- Dependency Injection
- Service Locator
- Abstract Factory*
- Factory Method *

### Structural patterns:
They deal with the relationship between classes, the classes combination and the formation of structures of greater complexity.
- Adapt
- Data Access Object (DAO)
- Query Object
- Decorator
- Bridge

### Behavior patterns:
Behavior patterns talk about how they interact with each other to achieve certain results.
The main behavior patterns are:

- Command
- Chain of Responsibility
- Strategy
- Template Method
- Interpret
- Observe
- State
- Visitor
- Iterator
***
Design patterns are reusable solutions for common software design problems.They provide a way for software developers to solve common and efficient problems, without having to reinvent the wheel every time.

Benefits of using design patterns =>

• Reusability: Avoid reinventing the wheel every time.

• Scalability: flexible and adaptable software design.

• Maintenance capacity: Code easier to modify and purify.

• Standardization: Common vocabulary and structure through different projects.

• Collaboration: easier for several developers to work in the same base code.


Some design patterns for common use =>

• Strategy pattern: The strategy pattern is used to define a family of algorithms, encapsulate each and make them interchangeable.

For example, imagine that you have a game with different types of characters, each with their own unique skills.The strategy pattern would allow you to define a set of strategies (that is, algorithms) for each type of character and then easily change between them as necessary.

• Observer pattern: The observer pattern is used to notify objects when there is a change in another object.

For example, imagine that you have a weather application that needs to notify its users when the temperature changes.The observer pattern would allow you to define a set of observers (that is, users) and then notify them when the temperature changes.

• Decorator pattern: The decorator pattern is used to add functionality to an object dynamically, without changing its original structure.

For example, imagine you have a car and want to add a GPS navigation system.The decorator pattern would allow you to add the GPS system without having to modify the car itself.

• Command pattern: The command pattern is used to encapsulate an application as an object, which allows to store, pass and run at a later time.

For example, imagine that you have a home automation system that allows you to control lights, thermostat and other devices.The command pattern would allow you to encapsulate each command (for example, turn on the lights), store it as an object and execute it later.

• Factory pattern: the factory pattern is used to create objects without exposing the logic of customer creation.

For example, imagine that you have a game with different levels, each with its own set of enemies.The factory pattern would allow you to create enemies for each level without exposing the logic of customer creation.

• Composite pattern: The compound pattern is used to create a tree -shaped object structure, where individual objects and objects of objects are treated in the same way.

For example, imagine that you have a file system, where files and directories are treated in the same way.The compound pattern would allow you to treat individual archives and directories such as the same type of object and create a structure similar to a tree of the entire file system.
***
In addition to the design patterns we have:

- Architecture patterns.Ways to break down, connect and relate systems, treat concepts such as: levels, pipes and filters.It is a level of abstraction greater than that of design patterns.
- Programming patterns (idioms patterns).Low level patterns about a specific programming language describe how to implement concrete issues.
- Analysis patterns.Set of rules that allow modeling a system satisfactorily.
- Organizational patterns.They describe how to organize human groups, generally related to software.
- Other software patterns.You can talk about concurrent programming patterns, graphic interface, code organization, code optimization, code robustness, test phase.
***
### <span style="color:grey">Links of design patterns:</span>

- 🔗 [refactoring.guru/es/design-patterns](https://refactoring.guru/es/design-patterns)
- 🔗 [0w8States/PLC-Design-Patterns](https://github.com/0w8States/PLC-Design-Patterns)
- 🔗 [github.com/Aliazzzz/Applied-Design-Patterns-in-CODESYS-V3](https://github.com/Aliazzzz/Applied-Design-Patterns-in-CODESYS-V3)
- 🔗 [sourcemaking.com/design_patterns](https://sourcemaking.com/design_patterns)
***
### <span style="color:grey">Link to the Youtube Video_NNN:</span>
