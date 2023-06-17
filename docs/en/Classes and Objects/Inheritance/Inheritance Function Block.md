## <span style="color:grey">Inheritance Function Block:</span>
The function block is an excellent medium to maintain the sections of a program keeping them separated from each other. This improves the structure of the software and significantly simplifies its reuse. Previously, expanding the functionality of an existing function block was always a delicate task. This meant modifying the code or programming a new function block around the existing block (that is, the existing function block was effectively embedded within a new function block). In the last case, it was necessary to create all the input variables again and assign them to the input variables for the existing function block. The same was required, in the opposite, for the output variables.

Twincat 3 and Codesys (IEC61131-3) introduce the concept of inheritance. Inheritance is one of the fundamental principles of object oriented programming. The inheritance implies deriving a new function block from an existing function block. Next, you can expand the new block. To the extent allowed by the access specifiers of the main function block, the new function block inherits all the properties and methods of the main function block. Each function block can have any number of blocks of secondary function, but only one block of main function. The derivative of a function block is produced in the new statement of the function Block. The name of the new function block is followed by the keyword EXTENDS followed by the name of the main function block. For example:
```javascript
FUNCTION_BLOCK PUBLIC FB_NewEngine EXTENDS FB_Engine
```
The new derived function block ( FB_NewEngine ) has all the properties and methods of its parent ( FB_Engine ).  However, the methods and properties are only inherited when the access specifier allows it.

The secondary function block also inherits all variables **local**, **VAR_INPUT** , **VAR_OUTPUT** and **VAR_IN_OUT** of the main function block. This behavior cannot be modified by access specifiers.

If the methods or properties of the main function block have been declared as a protect, the secondary function block (FB_Newengine) will be able to access them, but not from outside FB_NewEngine.

The inheritance applies only to the Pou of type function_block.

### <span style="color:grey">Access Specifiers:</span>
Function_Block, Function or Program Statements may include an access specifier. This restricts access and, where appropriate, the ability to inherit.

- <span style="color:green">PUBLIC:</span>

Anyone can call or create an instance of the Pou. In addition, if the POU is a function_block, it can be used for inheritance. Restrictions are not applied.

- <span style="color:green">INTERN:</span>

The Pou can only be used within its own name space. This allows the POU to be available only within a certain library, for example.

- <span style="color:green">FINAL:</span>

The function_block cannot serve as a main function block. The methods and properties of this Pou cannot be inherited. Final is only allowed for pou of the type function_block.

The default configuration where no access specifier is defined is public. Private and Protected Access Specifiers are not allowed in a Pou's statements.

If you plan to use the inheritance, the declaration of the function Block will have the following structure:

```javascript
FUNCTION_BLOCK <Access specifier> <Name> EXTENDS <Name parent function block>
```
### <span style="color:grey">Overwhelming Methods:</span>
The new function_block FB_Newengine, which is derived from FB_ENGINE, may contain additional properties and methods. For example, we can add Gear property. This property can be used to consult and change the current ratio. It is necessary to configure the get and set for this property.

However, we must also ensure that the parameter NGear of the Start () method is passed to this property. Because the FB_Engine main function block has no access to this new property, a new method must be created exactly the same parameters in FB_Newengine. We copy the existing code to the new method and add new code so that the NGEAR parameter passes to Gear Property.

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

When a method or property that is already present in the main function block is redefined within the secondary function block, this is called overwhelming. The FB_Newengine Function Block overwrites the Start () method.

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
