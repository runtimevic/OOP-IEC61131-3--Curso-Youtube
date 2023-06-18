### <span style="color:grey">SUPER^ Pointer:</span>

In object -oriented programming (OOP) In Plcs, the SUPER^ pointer is used to refer to the object or instance of a SUPERior class or father.Suppose you have a class called "sensor" and another class called "temperature sensor", which inherits the first.The "sensor" class is the father or SUPERior class and the class "temperature sensor" is the daughter or lower class.If you are programming in the "Temperature sensor" class and you need to access a "sensor" class or property, you can use the SUPER^ pointer to refer to the instance of the "sensor" class to which the current object belongs.For example, if you want to access the "Obtain_ value () method of the" sensor "class, you can do so: SUPER^.ObTain_valor ().This indicates that you want to call the "obtain_ value () method from the" sensor "class to which the current object belongs.

Each block of functions that is derived from another block of functions has access to a pointer called SUPER^.
This can be used to access elements (methods, properties, local variables, etc.) from the main functions block.

Instead of copying the main functions block code to the new method, the SUPER^ pointer can be used to call the method from the functions block.This eliminates the need to copy the code.

```javascript
SUPER^();                 // Call of the FB body of the base class.
SUPER^.METH_DoIt();       // Call of the Meth_doit method that is implemented in the base class.
```
### <span style="color:grey">Example:</span>

- Using the pointers SUPER^ and THIS:

Function block -- FB_Base:
```javascript
FUNCTION_BLOCK FB_Base
VAR_OUTPUT
    nCnt : INT;
END_VAR
```
Method -- FB_Base.METH_DoIt:
```javascript
METHOD METH_DoIt : BOOL
nCnt := -1;
```
Method -- FB_Base.METH_DoAlso:
```javascript
METHOD METH_DoAlso : BOOL
METH_DoAlso := TRUE;
```
Function block -- FB_1:
```javascript
FUNCTION_BLOCK FB_1 EXTENDS FB_Base
VAR_OUTPUT
    nBase: INT;
END_VAR
THIS^.METH_DoIt();      // Call to the method METH_DOIT of the FB_1.
THIS^.METH_DoAlso();

SUPER^.METH_DoIt();     // Call to the method METH_DOIT of the FB_Base.
SUPER^.METH_DoAlso();
nBase := SUPER^.nCnt;
```
Method -- FB_1.METH_DoIt:
```javascript
METHOD METH_DoIt : BOOL
nCnt := 1111;    
METH_DoIt := TRUE;
```
Method -- FB_1.METH_DoAlso:
```javascript
METHOD METH_DoAlso : BOOL
nCnt := 123;    
METH_DoAlso := FALSE;
```
Program MAIN:
```javascript
PROGRAM MAIN
VAR
    fbMyBase : FB_Base;
    fbMyFB_1 : FB_1;
    nTHIS    : INT;
    nBase    : INT;
END_VAR
fbMyBase();
nBase := fbmyBase.nCnt;
fbMyFB_1();
nTHIS := fbMyFB_1.nCnt;
```
***
### <span style="color:grey">Links SUPER^ pointer:</span>
- 🔗 [SUPER puntero Infosys Beckhoff](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528837771.html?id=5132996865500332085)

- 🔗 [help.codesys.com, SUPER](https://help.codesys.com/api-content/2/codesys/3.5.14.0/en/_cds_pointer_SUPER/)

- 🔗 [stefanhenneken.net,iec-61131-3-methods-properties-and-inheritance](https://stefanhenneken.net/2017/04/23/iec-61131-3-methods-properties-and-inheritance/)

***
### <span style="color:grey">Link to the Youtube Video 009:</span>
- 🔗 [009 - OOP IEC 61131-3 PLC -- Pointers THIS^ and SUPER^](https://youtu.be/S3YdAHyBc6I)
