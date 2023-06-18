### <span style="color:grey">THIS^ Pointer:</span>

The pointer THIS^ It is used to reference the current instance of a class in an object -oriented program.
In other words, when an object of a class is created, the pointer THIS^ It is used to access the attributes and methods of that specific object.For example, if we have a class called "motor" with an "speed" attribute and a "accelerate" method, when creating an object of the motor class, we can use the so pointer^ to refer to that object and modify its speed orspeed up.

The pointer **THIS^** It is available for all functions blocks and points to the current Function Block instance.
This pointer is necessary that a method contains a local variable that hides a variable in the functions block.

A declaration of allocation within the method establishes the value of the local variable.
If we want the method to establish the value of the local variable in the functions block, we need to use the pointer THIS^ To access him.

As with the super pointer, the pointer THIS It must also be capitalized.

```javascript
THIS^.METH_DoIt();
```
### <span style="color:grey">Examples:</span>

- The NVARB Function Block variable is established although NVARB is hidden.

```javascript
FUNCTION_BLOCK FB_A
VAR_INPUT
    nVarA: INT;
END_VAR

nVarA := 1;

FUNCTION_BLOCK FB_B EXTENDS FB_A
VAR_INPUT
    nVarB : INT := 0;
END_VAR

nVarA := 11;
nVarB := 2;

METHOD DoIt : BOOL
VAR_INPUT
END_VAR
VAR
    nVarB : INT;
END_VAR

nVarB := 22; // The nVarB local variable is established.
THIS^.nVarB := 222; // The variable of the block NVARB offunctions is established although Nvvarb is hidden.

PROGRAM MAIN
VAR
   fbMyfbB : FB_B;
END_VAR

fbMyfbB(nVarA:=0, nVarB:= 0);
fbMyfbB.DoIt();
```

- A function call needs the reference to the FB instance.

```javascript
FUNCTION F_FunA : INT
VAR_INPUT
    fbMyFbA : FB_A;
END_VAR
...;

FUNCTION_BLOCK FB_A
VAR_INPUT
    nVarA: INT;
END_VAR
...;

FUNCTION_BLOCK FB_B EXTENDS FB_A
VAR_INPUT
    nVarB: INT := 0;
END_VAR

nVarA := 11;
nVarB := 2;

METHOD DoIt : BOOL
VAR_INPUT
END_VAR
VAR
    nVarB: INT;
END_VAR

nVarB := 22;  // The Nvvarb local variable is established.
F_FunA(fbMyFbA := THIS^);  // f_funa is called via This^.

PROGRAM MAIN
VAR
    fbMyFbB: FB_B;
END_VAR

fbMyFbB(nVarA:=0 , nVarB:= 0);
fbMyFbB.DoIt();
```
***
### <span style="color:grey">Links THIS^ pointer:</span>

- 🔗 [THIS puntero Infosys Beckhoff](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528843147.html?id=1252534934601716110)

- 🔗 [help.codesys.com, THIS](https://help.codesys.com/api-content/2/codesys/3.5.14.0/en/_cds_pointer_this/#efa671ce4f92ff0c0a8640e009d26eb-id-939859e9e4f92fefc0a8640e00938466)

- 🔗 [stefanhenneken.net,iec-61131-3-methods-properties-and-inheritance](https://stefanhenneken.net/2017/04/23/iec-61131-3-methods-properties-and-inheritance/)

***
### <span style="color:grey">Link to the Youtube Video 009:</span>
- 🔗 [009 - OOP IEC 61131-3 PLC -- Pointers THIS^ and SUPER^](https://youtu.be/S3YdAHyBc6I)
