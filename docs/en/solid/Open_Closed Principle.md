### <span style="color:grey"> Open/closed principle -- OCP :</span>

The definition of the open/closed principle
The open/closed principle (OCP) was formulated by Bertrand Meyer in 1988 and establishes:

A software entity must be open to extensions, but at the same time closed to modifications.
Software entity: This means a class, function block, module, method, service, ...
**Open:** The behavior of software modules should be extensible.

**Closed:** The expansion capacity should not be achieved by changing the existing software.

When Bertrand Meyer defined the open/closed principle (OCP) At the end of the 1980s, attention focused on C ++ programming language.He used inheritance, well known in the object -oriented world.The discipline of object orientation, which was still young at that time, promised great improvements in reuse and maintainability by allowing specific classes to be used as base classes for new classes.

When Robert C. Martin took over the Bertrand Meyer principle in the 1990s, he technically implemented it differently.C ++ allows the use of multiple inheritance, while multiple inheritance is rarely found in the newest programming languages.For this reason, Robert C. Martin focused on the use of interfaces.You can find more information about it in the book (Amazon advertising link *) [Arquitectura limpia: el manual práctico para el diseño de software profesional.](https://www.amazon.de/gp/product/395845724X/ref=as_li_tl?ie=UTF8&camp=1638&creative=6742&creativeASIN=395845724X&linkCode=as2&tag=0101e3-21&linkId=77473018891c27120a9cebe02be17c27)

### <span style="color:grey">Summary:</span>
However, adhering to the open/closed principle (OCP) entails the risk of excess engineering.The extensions option should only be implemented where it is specifically necessary.The software cannot be designed in such a way that all imaginable extensions can be implemented without making adjustments in the source code.

### <span style="color:grey">Example:</span>

```javascript
FUNCTION_BLOCK Vehicle
VAR_INPUT
    speed : REAL;
END_VAR

// Method to obtain speed
getSpeed() : REAL;

END_FUNCTION_BLOCK

FUNCTION_BLOCK Car EXTENDS Vehicle // extiende la vehicle function
VAR_INPUT
    MaxSpeed : REAL;
END_VAR

// constructor
Car(getSpeed, MaxSpeed);

// method for obtaining the maximum speed 
getMaximumSpeed() : REAL;

END_FUNCTION_BLOCK

FUNCTION_BLOCK moto EXTENDS Vehicle // Extend the vehicle function
VAR_INPUT
    acceleration : REAL;
END_VAR

// constructor
Moto(speed, acceleration);

// Method to obtain acceleration
getAcceleration() : REAL;

END_FUNCTION_BLOCK
```
In this way, the "vehicle" class is closed for direct and open modifications for extensions through the new "car" and "motorcycle" classes.Each new class adds specific functionalities without directly modifying the original class.
***
### <span style="color:grey">Links:</span>

- 🔗 [stefanhenneken.net, EC 61131-3: SOLID – The Open/Closed Principle](https://stefanhenneken.net/2023/04/06/iec-61131-3-solid-the-open-closed-principle/)