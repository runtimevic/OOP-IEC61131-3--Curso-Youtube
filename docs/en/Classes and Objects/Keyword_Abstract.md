### <span style="color:grey"> Abstract keyword:</span>

### <span style="color:grey"> Abstract concept:</span>
The abstract key word is available for blocks of functions, methods and properties.It allows the implementation of a PLC project with levels of abstraction.
Abstraction is a key concept of object -oriented programming.Different levels of abstraction contain aspects of general or specific implementation.

### <span style="color:grey">Abstract availability:</span>
It was already available in Codesys, but with the launch of Twincat 4024 it is now also available on Twincat: the keyword abstract. (Available in TC3.1 Build 4024).

### <span style="color:grey">Application of abstraction:</span>
It is useful to implement basic or common functions of different classes in an abstract basic class.Specific aspects are implemented in non -abstract subclasses.
The principle is similar to the use of an interface.The interfaces correspond to purely abstract classes that contain only abstract methods and properties.
An abstract class can also contain non -abstract methods and properties.

The abstraction and use of the abstract keyword is a common practice in OOP and many higher level languages such as C# admit it.It is often considered the fourth pillar of object -oriented programming. 

### <span style="color:grey">Why do we need abstraction?</span>
To understand why abstraction is so important in object -oriented programming, let's go back to the definition of abstraction.Abstraction consists of hiding unnecessary implementation details and focusing on functionality.

Consider a block of functions that implements a basic functionality of load cell.To use this, all we need to know is that you need an unprocessed input signal and a scale factor, and will provide us with a output value in Newton.We do not need to know how the output value is converted and scale.Let someone else worry about that.It is not influenced in our program.We will only work with a simple interface of a load cell.

It is good to know that the use of abstractions is closely related to the principle of dependency investment, one of the solid principles.This becomes especially important when you start working with unit tests.

### <span style="color:grey">Rules for the use of the abstract keyword:</span>

- Abstract functions blocks cannot be instantized.
- Blocks of abstract functions can contain abstract and non -abstract methods and properties.
- Abstract methods or properties do not contain any implementation (only the declaration).
- If a block of functions contains an abstract method or property, it must be abstract.
- The blocks of abstract functions must be extended to be able to implement abstract methods or properties.
Therefore: a derivative FB must implement the methods / properties of its basic FB or must also be defined as abstract.
Sample
Abstract basic class:
```javascript
FUNCTION_BLOCK ABSTRACT FB_System_Base
```
Common points of all system modules are implemented in this abstract basic class.It contains the non -abstract property "nsystemid" and the "Execute" abstract method for this:
```javascript
PROPERTY nSystemID : UINT
```
```javascript
METHOD ABSTRACT Execute
```
While the implementation of "nsystemid" is the same for all systems, the implementation of the "Execute" method differs for individual systems.

Subclase no abstracta:
```javascript
FUNCTION_BLOCK FB_StackSystem EXTENDS FB_System_Base
```
Non -abstract classes derived from the basic class are implemented for specific systems.This subclass represents a battery.Since it is not abstract, you must implement the "Execute" method that defines the specific execution of the pile:
```javascript
METHOD Execute
```
### <span style="color:grey">Example of demonstration of the keyword abstract in TwinCAT:</span>

- 🔗 [The ABSTRACT keyword, www.plccoder.com ](https://www.plccoder.com/abstract/)

### <span style="color:grey">Links abstract:</span>

- 🔗 [ABSTRACT concept, infosys.beckhoff.com](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/6413748235.html?id=2638086927809860687)
- 🔗 [The ABSTRACT keyword, www.plccoder.com ](https://www.plccoder.com/abstract/)

***
### <span style="color:grey">Link to the Youtube Video 012:</span>
- 🔗 [012 - OOP IEC 61131-3 PLC -- Abstract](https://youtu.be/-Jq0jg0foo4)