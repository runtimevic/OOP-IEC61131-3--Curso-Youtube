### <span style="color:grey">Properties:</span>

***
Properties are the main variables of a class.They can be used as an alternative to the regular class or
E/S of the Function Block.
The properties have "obtain" and set methods "establish" that allow access and/or change the variables:

- GET - Method that returns the value of a variable.
- Set - Method that establishes the value of a variable.

By eliminating the "obtain" or "establish" method, a programmer can make the properties "of writing" or
"Reading only", respectively.
Since these are methods, it means that the properties can:

- Have your own internal variables.
- Perform operations before returning its value.
- It is not necessary to attach the variable returned to a entry or exit in particular (or
internal variable) of the POU, can return a value based on a certain combination of its
Variables
- Be accessed by event instead of being verified in each execution cycle.

***
### Properties: getters & Setters:

To directly modify our properties, what is sought is to be done through the getters and setters, which varies writing according to the language but the concept is the same.
***
Therefore, a property statement has the following structure:

```typescript
PROPERTY <Access specifier> <Name> : <Datatype>
```
In the property object it is mandatory that returns a value.
***
### <span style="color:grey">Access specifiers:</span>
As with the methods, the properties can also take the following access specifiers: **PUBLIC , PRIVATE , PROTECTED , INTERNAL and FINAL** . When no access specifier is defined, the property is **PUBLIC** . In addition, you can also specify an access specifier for each setter and getter.This has priority over the property access specifier itself.

The properties are recognizable by the following characteristics:

Access specifier:

- <span style="color:orange">PUBLIC:</span> 
    - It corresponds to the modifier specification without access.
- <span style="color:orange">PRIVATE:</span> 
    - Access to property is limited only within its own class (FUNCTION BLOCK).
- <span style="color:orange">PROTECTED:</span>
    - Access is restricted, it cannot be accessed from the main program, From the MAIN.
- <span style="color:orange">INTERNAL:</span>
    - Access to property is limited to name space, that is, to the library.
- <span style="color:orange">FINAL:</span> 
    - The property is not allowed to overwritten in a derivative of the functions block.This means that property cannot be overwritten or extended in a possibly existing subclass.
    - The properties can be abstract, which means that a property does not have an initial implementation and that the real implementation is provided in the derived functions block.

Pragmas are very useful for monitoring properties in online mode.For this, write them at the top of the properties statements (Attribute 'monitoring'):

**{attribute 'monitoring := 'variable'}**:  When accessing a property, Twincat stores the real value in a variable and shows the value of the latter.This value can become obsolete if the code no longer access the property.

**{attribute 'monitoring' := 'call'}**:  Every time the value is shown, Twincat calls the GET access descriptor code.Any side effect, caused by that code, may appear in the follow -up.

***
### <span style="color:grey">Object Links Property:</span>

- 🔗 [Documentación de Codesys del Objeto propiedad](https://help.codesys.com/api-content/2/codesys/3.5.12.0/en/_cds_obj_property/#b08bdbd0d86c0a8640e00400511-id-5dbd3039bdbd0d85c0a8640e003d7982)

- 🔗 [Documentación de Beckhoff del Objeto propiedad](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2530335371.html?id=7678313929092874522)

- 🔗 [utilizing-properties,twincontrols.com](https://twincontrols.com/community/twincat-troubleshooting/utilizing-properties/#post-76)

- 🔗 [object-oriented-programming-in-programmable-logic-controllers-plc-whats-really-new,en.grse.de](https://en.grse.de/blog/object-oriented-programming-in-programmable-logic-controllers-plc-whats-really-new/)

- 🔗 [TC07.Beckhoff TwinCAT3 Function Block-Part2 Property.JP- DUT](https://www.youtube.com/watch?v=zbnb8K15YdI)

***
### <span style="color:grey">Link to the Youtube Video 006:</span>
- 🔗 [006 - OOP IEC 61131-3 PLC -- Objeto Propiedad](https://youtu.be/Ci7FExNF7vQ)
