### <span style="color:grey"> Liskov Substitution Principle -- LSP :</span>

The Liskov replacement principle establishes that an instance of a subclass must be used anywhere where an instance of the base class is expected, without affecting the behavior of the program.

### <span style="color:grey">Example:</span>

```javascript
INTERFACE I_mover
METHODS
    Mover : BOOL; // Method for moving the vehicle
END_INTERFACE

FUNCTION_BLOCK Vehicle IMPLEMENTS I_mover
// Base class for vehicles
VAR_INPUT
    speed : REAL;
END_VAR

METHODS
    Mover : BOOL; // Method for moving the vehicle
END_FUNCTION_BLOCK

FUNCTION_BLOCK Cars EXTENDS Vehicle
// subclass for cars
VAR_INPUT
    MaxSpeed : REAL;
END_VAR

METHODS
    Mover : BOOL; // método para mover el coche
END_FUNCTION_BLOCK

FUNCTION_BLOCK Motorcycles EXTENDS Vehicle
// Subclass for motorcycles
VAR_INPUT
    TimeAceleracion : TIME;
END_VAR

METHODS
    Mover : BOOL; // METHOD TO MOVE THE MOTORCYCLE
END_FUNCTION_BLOCK

FUNCTION_BLOCK Conductor
VAR_INPUT
    vehicle : REFERENCE TO Vehicle; // Reference to the Base Class
END_VAR

// Method to move the vehicle at the specified speed
vehicle.Mover Avelocity(speed);

END_FUNCTION_BLOCK
```
In this example, the subclass is used `Car` y `Motorcycles` as instances of the base class `Vehicle`, which meets the Liskov replacement principle.This means that any instance of `Car` o `Motorcycles` where an instance of `Vehicle`, without affecting the behavior of the program.

In addition, each subclass has a method `Mover` which is used to move the vehicle, which shows how the same interface can be used `I_Mover` (The same method name) For different concrete implementations.
***
### <span style="color:grey">Links:</span>
- 🔗 [stefanhenneken.net,iec-61131-3-solid-the-liskov-substitution-principle](https://stefanhenneken.net/2022/09/27/iec-61131-3-solid-the-liskov-substitution-principle/)