### <span style="color:grey"> Interface segregation principle --  ISP :</span>

The interface segregation principle establishes that a class should not implement interfaces that do not use and must be divided into smaller and specific interfaces.

### <span style="color:grey">Example:</span>

```javascript
INTERFACE IFlyingBirds
// interface for flying birds
METHODS
    Flying : BOOL; // Method for flying
END_INTERFACE

INTERFACE ISwimmingBirds
// interface for swimming birds
METHODS
    Swiming : BOOL; // Method for swimming
END_INTERFACE

INTERFACE IRunningBirds
// Interface for running birds
METHODS
    Running : BOOL; // running method
END_INTERFACE

FUNCTION_BLOCK Duck IMPLEMENTS IFlyingBirds, ISwimmingBirds // Implement the IFlyingBirds and ISwimmingBirds interfaces
VAR_INPUT
    speed : REAL;
    maximumaltatude : REAL;
    Timepobuceo : TIME;
END_VAR

// Implementation for the duck
// Methods to fly and swim

END_FUNCTION_BLOCK

FUNCTION_BLOCK Eagle IMPLEMENTS IFlyingBirds // Implement the IFlyingBirds interface only
VAR_INPUT
    speed : REAL;
    maximumaltatude : REAL;
END_VAR

// Implementation for the Eagle
// Flying method

END_FUNCTION_BLOCK

FUNCTION_BLOCK Ostrich IMPLEMENTS IRunningBirds // Implement the IrunningBirds interface only
VAR_INPUT
    speed : REAL;
    tiempoCorriendo : TIME;
END_VAR

// Implementation for ostrich
// Running method

END_FUNCTION_BLOCK
```
In this way, each class has only the necessary methods and is divided into smaller and specific interfaces.In addition, interfaces are used instead of function blocks to implement the interface segregation principle.This allows greater flexibility and avoids the need to implement unnecessary methods in a class.
***
### <span style="color:grey">Links:</span>
- 🔗 [stefanhenneken.net,iec-61131-3-solid-the-interface-segregation-principle](https://stefanhenneken.net/2023/02/25/iec-61131-3-solid-the-interface-segregation-principle/)

- 🔗 [IEC 61131-3: SOLID – The Interface Segregation Principle](https://stefanhenneken.net/2023/02/25/iec-61131-3-solid-the-interface-segregation-principle/#more-2505)

-  🔗 [🤓¡PATRONES de DISEÑO de Typescript que te AYUDARÁN! Guía + Interface Segregation Principle | PT 1.](https://www.youtube.com/watch?v=Ph7kXNmski8)