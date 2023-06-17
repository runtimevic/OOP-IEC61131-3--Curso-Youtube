## <span style="color:grey">Inheritance function block:</span>
The functions blocks are an excellent medium to maintain the sections of the program separated from each other.This improves the structure of the software and significantly simplifies reuse.Previously, expanding the functionality of an existing block of functions was always a delicate task.This meant modifying the code or programming a new block of functions around the existing block (that is, the existing functions block was effectively embedded within a new block of functions).In the last case, it was necessary to create all the input variables again and assign them to the input variables for the existing functions block.The same was required, in the opposite, for the output variables.

Twincat 3 and Codesys (IEC61131-3) introduce the concept of inheritance.Inheritance is one of the fundamental principles of object -oriented programming.The inheritance implies deriving a new block of functions from an existing block of functions.Next, you can expand the new block.To the extent allowed by the access specifiers of the main functions block, the new block of functions inherits all the properties and methods of the main functions block.Each block of functions can have any number of blocks of secondary functions, but only a block of main functions.The derivation of a block of functions is produced in the new statement of the Functions Block.The name of the new block of functions is followed by the keyword extended followed by the name of the main functions block.For example:
```javascript
FUNCTION_BLOCK PUBLIC FB_NewEngine EXTENDS FB_Engine
```
The new block of derived functions ( FB_NewEngine ) He has all the properties and methods of his father ( FB_Engine ). However, the methods and properties are only inherited when the access specifier allows it.

The secondary functions block also inherits all variables **local**, **VAR_INPUT** , **VAR_OUTPUT** y **VAR_IN_OUT** of the main functions block.This behavior cannot be modified by access specifiers.

If the methods or properties of the main functions block have been declared as a protect, the secondary functions block (FB_Newengine) will be able to access them, but not from outside FB_NewEngine .

The inheritance applies only to the Pou of type function_block.

### <span style="color:grey">Access specifiers:</span>
Function_Block, Function or Program statements may include an access specifier.This restricts access and, where appropriate, the ability to inherit.

- <span style="color:green">PUBLIC:</span>

Anyone can call or create an instance of the Pou.In addition, if the POU is a function_block, it can be used for inheritance.Restrictions are not applied.

- <span style="color:green">INTERN:</span>

The Pou can only be used within its own name space.This allows the POU to be available only within a certain library, for example.

- <span style="color:green">FINAL:</span>

The function_block cannot serve as a main block of functions.The methods and properties of this Pou cannot be inherited.Final is only allowed for pou of the type function_block.

The default configuration where no access specifier is defined is public.Private and Protected Access Specifiers are not allowed in Pou's statements.

If you plan to use the inheritance, the declaration of the Functions Block will have the following structure:

```javascript
FUNCTION_BLOCK <Access specifier> <Name> EXTENDS <Name basic function block>
```
### <span style="color:grey">Overwhelming methods:</span>
The new function_block FB_Newengine, which is derived from FB_ENGINE, may contain additional properties and methods.For example, we can add Gear property.This property can be used to consult and change the current march.It is necessary to configure getters and setters for this property.

However, we must also ensure that the parameter NGear of the Start () method is passed to this property.Because the FB_Engine main functions block has no access to this new property, a new method must be created exactly the same parameters in FB_Newengine.We copy the existing code to the new method and add new code so that the NGEAR parameter passes to Gear Property.

```javascript
METHOD PUBLIC Start
VAR_INPUT
  nGear : INT := 2;
  fVelocity : LREAL := 8.0;
END_VAR 
  
IF (fVelocity < MaxVelocity) THEN
  velocityInternal := fVelocity;
ELSE
  velocityInternal := MaxVelocity;
END_IF
Gear := nGear; // new
```
Line 12 copy the NGEAR parameter to the Gear Property.

When a method or property that is already present in the main functions block is redefined within the secondary functions block, this is called overwhelming.The FB_Newengine Function Block overwrites the Start () method.

Therefore, FB_Newengine has the new gear property and overwrites the Start () method.

![inheritance](../../imagenes/herencia.PNG)

```javascript
fbNewEngine.Start(1, 7.5);
```
Call the Start () method in FB_Newengine, since this method has been redefined (overwhelming) in FB_Newengine.

While:

```javascript
fbNewEngine.Stop();
```
Call the stop () method from FB_Engine.The Stop () method has been inherited by FB_Newengine of FB_ENGINE.

***
### <span style="color:grey">Inheritance Links Function Block:</span>

- 🔗 [stefanhenneken.net,iec-61131-3-methods-properties-and-inheritance](https://stefanhenneken.net/2017/04/23/iec-61131-3-methods-properties-and-inheritance/)

- 🔗 [Simple Codesys OOP - Inheritance](https://www.youtube.com/watch?v=ehwCe9C4gWQ)

- 🔗 [TC11.Beckhoff TwinCAT3 Function Block Extend.JP](https://www.youtube.com/watch?v=rz-a5iM3-uM)

### <span style="color:grey">Link to the Youtube Video 007:</span>
- 🔗 [007 - OOP IEC 61131-3 PLC -- Inheritance FB](https://youtu.be/-twPN0jTrKA)
