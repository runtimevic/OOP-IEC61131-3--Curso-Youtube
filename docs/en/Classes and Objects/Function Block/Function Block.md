### <span style="color:grey">Declaration of a function block:</span> 
```iecst
FUNCTION_BLOCK <access specifier> <function block> | EXTENDS <function block> | IMPLEMENTS <comma-separated list of interfaces>
```
### <span style="color:grey">Implementation Function Block:</span> 

![Function_Block](../en/images/Function_Block_Coche.png)



***
<span style="color:orange"> EXTENDS:</span> 
- If in the declaration of a function_block we add the word extends followed by the name of the FB of which we want to inherit, it means that we inherit all its methods and properties.(inheritance principle)
- An FB can only inherit from an FB class.
***
<span style="color:orange"> IMPLEMENTS:</span> 
- If in the declaration of a function_block we add the word implements followed by the name of the interface or interfaces separated by commas.
- If an interface is implemented in the FB, it is mandatory in the FB to create the programming of the methods and properties of the implemented interface.
***
- Examples of Function_Block Declaration:

```javascript
FUNCTION_BLOCK INTERNAL ABSTRACT FB
FUNCTION_BLOCK INTERNAL FINAL FB
FUNCTION_BLOCK PUBLIC FINAL FB
FUNCTION_BLOCK ABSTRACT FB
FUNCTION_BLOCK PUBLIC ABSTRACT FB
FUNCTION_BLOCK FB EXTENDS FB1 IMPLEMENTS Interface1, Interface2, Interface3
```
***
### <span style="color:grey">Link to the Youtube Video 003:</span>
- 🔗 [003 - OOP IEC 61131-3 PLC -- Class and object](https://youtu.be/lchxx28wwXM)
### <span style="color:grey">Link to the Youtube Video 004:</span>
- 🔗 [004 - OOP IEC 61131-3 PLC -- Class and object](https://youtu.be/jGtGV9icvO0)