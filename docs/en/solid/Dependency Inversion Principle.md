### <span style="color:grey"> Dependency investment principle -- (Dependency Inversion Principle) DIP :</span>

The dependency investment principle establishes that the higher level modules should not depend on the lower level modules, but that both must depend on abstractions.

### <span style="color:grey">Example:</span>

```javascript
INTERFACE iConnection
// Connection interface
METHODS
     : BOOL; // Method to establish connection
END_INTERFACE

FUNCTION_BLOCK ConnectionSerial IMPLEMENTS IConnection // Implement the iconexion interface
// Implementation for serial connection
END_FUNCTION_BLOCK

FUNCTION_BLOCK ConnectionEthernet IMPLEMENTS IConnection // Implement the iconexion interface
// Implementation for Ethernet connection
END_FUNCTION_BLOCK

FUNCTION_BLOCK Device
VAR_INPUT
    Connection : IConnection; // Interface IConnection
END_VAR

// constructor
Device(Connection);

// Method to establish connection
establish Connection();

END_FUNCTION_BLOCK
```

This allows any object that implements the interface can be passed `IConnection`, which meets the principle of dependencies investment.

In addition, the method is used `EstablishConnection` defined in the interface `IConnection`, which demonstrates how an abstraction (the interface) can be used to work with different concrete implementations evenly.

***
### <span style="color:grey">Links:</span>
- 🔗 [stefanhenneken.net,iec-61131-3-solid-the-dependency-inversion-principle](https://stefanhenneken.net/2022/02/09/iec-61131-3-solid-the-dependency-inversion-principle/)

- 🔗 [Twincontrols__Dependency Injection](https://www.twincontrols.com/community/twincat-knowledgebase/dependency-injection-in-twincat/#post-351)
