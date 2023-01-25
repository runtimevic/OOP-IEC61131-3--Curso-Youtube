### interface:

An interface is a class that contains methods and properties without implementation. This 
interface can then be implemented in any class, but that class must implement all its methods 
and properties.
While inheritance is a “is a” relationship, interfaces can be described as a “behaves as” or a 
“has a” relationship [15].
Interfaces are objects that allow multiple different classes to have something in common with 
less dependencies. Classes and function blocks can implement several different interfaces.
One can think of interface’s methods and properties as actions that mean different things 
depending on who is executing them. For instance, the word “Run” means “move at a speed 
faster than a walk” for a human being, but it means “execute” for computers.
Classes or function blocks that share no similarities may implement the same interface. In this 
case, the implementation of the methods in each class can be totally different. This opens up 
lots of powerful programming approaches:
• POUs can call an interface to execute a method or access a property, not knowing which 
class or FB it is dealing with or how it is going to execute the operation. The interface 
then points to a class or function block that implements the interface and the operation 
is executed;
• Programmers can create easily customizable switch cases using polymorphism.