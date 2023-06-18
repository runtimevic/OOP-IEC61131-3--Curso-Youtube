
### <span style="color:grey">Other operators:</span>

### <span style="color:grey">__DELETE:</span>
- The operator is an extension of the IEC 61131-3 standard.
- The operator releases the instance memory, which the __NEW operator dynamically generated.
- The Delete operator has no return value and the operand is set at 0 after this operation.
```javascript
//Syntax:
 __DELETE (<Pointer>)
```
- If a pointer points to a block of functions, TwinCAT calls the corresponding fb_exit method before the pointer is established in 0.

- 🔗 [__DELETE, infosys.beckhoff.com](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2529160331.html?id=2289870734872430416)
- 🔗 [__DELETE, help.codesys.com](https://help.codesys.com/api-content/2/codesys/3.5.12.0/en/_cds_operator_delete/)
***
### <span style="color:grey">__ISVALIDREF:</span>
- The operator is an extension of the IEC 61131-3 standard.
- The operator is used to check if a reference points to a value.Therefore, the verification is comparable with a verification of 'unequal at 0' in the case of a leading variable.
- You can find a description of the application and a sample of the use of the operator in the description of the reference data.
- The __isvalidref operator can only be used for reference to operands.This operator cannot be used to check the interface variables.To verify whether an interface variable has already been assigned an instance of the functions block, you can verify that the interface variable is not equal to 0 (IF iSample <> 0 THEN …).
```javascript
//Syntax: 
<Boolean variable> := __ISVALIDREF(<with REFERENCE TO <data type> declared identifier);
```
- 🔗 [__ISVALIDREF, infosys.beckhoff.com](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2529165707.html?id=8190095739921439819)
- 🔗 [__ISVALIDREF, help.codesys.com](https://help.codesys.com/api-content/2/codesys/3.5.14.0/en/_cds_operator_isvalidref/)
***

### <span style="color:grey">__NEW:</span>
- The operator is an extension of the IEC 61131-3 standard.
- The __NEW operator assigns memory for instances of functions blocks or matrices of standard data types.The operator returns a pointer with an appropriate type of the object.If you do not use the operator within an allocation, Twincat issues an error message.
- If the memory allocation attempt fails, __NEW returns the value 0.
- Dynamic memory is assigned from the router memory group.
- Status information from the TWINCAT router:
The FB_GetroutersTatusinfo functions block of the TC2_utilities library can be used to read status information from the Twincat router, such as the memory of the available router, from the PLC.
```javascript
//Syntax:
 __NEW (<Type>,[<Length>])
```
- No type change is possible through online change
- A function module/dut, which can be created with __NEW, occupies a fixed memory area.You cannot change your data design using the online change function.This means that new variables cannot be added, variables cannot be removed and types cannot be changed.This guarantees that the pointer to this object remains valid after online change.
- For this reason, the __NEW operator can only be applied to library function/dut **{attribute 'enable_dynamic_creation'}**. If the interface of a function/dut block of this type is modified, Twincat issues an error message.

- 🔗 [__NEW, infosys.beckhoff](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2529171083.html?id=5409766235804740463)
- 🔗 [__NEW, help.codesys.com](https://help.codesys.com/api-content/2/codesys/3.5.14.0/en/_cds_operator_new/)
***
### <span style="color:grey">__QUERYINTERFACE:</span>
- The operator is an extension of the IEC 61131-3 standard.
- In conversion time, the operator performs an interface reference type to another.The operator returns a bool type result.True means that TwinCAT conversion successfully.
```javascript
//Syntax: 
__QUERYINTERFACE(<ITF_Source>,<ITF_Dest>)
```
- 1st operating: interface or FB instance reference.
- 2nd Operating: Interface reference with the required types of destination. The second parameter contains a reference to the requested interface.

A previous requirement for explicit conversion is that both ITF_Source and ITF_DEST are derived from __System.Ilyinterface.This interface is implicitly available and does not require library.

- 🔗 [__QUERYINTERFACE, infosys.beckhoff.com](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2529176459.html?id=8921520647493442581)
- 🔗 [__QUERYINTERFACE, help.codesys.com](https://help.codesys.com/api-content/2/codesys/3.5.13.0/en/_cds_operator_queryinterface/#d1ae1a1daa87f58c0a8640e0179dbc5-id-05c12751daa87f58c0a8640e010610d5)
***
### <span style="color:grey">__QUERYPOINTER:</span>
- The operator is an extension of IEC61131-3.
- The operator enables the type conversion of an interface reference of a block of functions to a pointer in execution time.The operator returns a bool type result.True means that Twincat conversion successfully.
- For reasons of compatibility, the definition of the pointer to be converted must be an extension of the basic interface __System.Ilyinterface.
```javascript
//Syntax: 
__QUERYPOINTER (<ITF_Source>, <Pointer_Dest>)
```
- The first opera assigned to the operator is an interface reference or an instance of FB with the desired types of destination, the second operand is a pointer.After processing __QUERYPOINTER, Pointer_Dest contains the pointer to the reference or instance of a block of functions, which is currently aimed at the ITF_Source interface reference.Pointer_Dest does not have type and can be converted to any kind.Make sure the guy is correct.For example, the interface could offer a method that returns a type code.
- 🔗 [__QUERYPOINTER, infosys.beckhoff.com](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2529181835.html?id=8665610409656000922)
- 🔗 [__QUERYPOINTER, help.codesys.com](https://help.codesys.com/api-content/2/codesys/3.5.13.0/en/_cds_operator_querypointer/#a8ba732dbe7195dc0a8640e00227cc8-id-5fcc73e6dbe7195dc0a8640e0044a2da)
***
### <span style="color:grey">__TRY, __CATCH, __FINALLY, __ENDTRY:</span>
- Operators are an extension of the IEC 61131-3 standard and are used for specific exception management in the IEC code.
- Available from TC3.1 Compilation 4024 for 32 -bit execution time systems.
- Now it is also available for 64 -bit destination systems from TwinCAT versión 3.1.4026
```javascript
//Syntax:
__TRY
    <try_statements>
 
__CATCH(exc)
    <catch_statements>
 
__FINALLY
    <finally_statements>
 
__ENDTRY
 
<further_statements>
```
- If an instruction that appears under the __try operator generates an exception, the PLC program does not stop.Instead, run the instructions under _Catch and, therefore, start the management of exceptions.Next, the instructions are executed under __finally.Exception management ends with __endtry.Next, the PLC program executes subsequent instructions (instructions after __ENDTRY).

- Block instructions _TRY, that are under the instruction that triggers the exception, they no longer execute.This means that as soon as the exception is ruled out, the subsequent execution of the block is canceled _TRY and the low instructions are executed _CATCH.

- The low instructions _FINALLY They always run, that is, even if the instructions under _TRY They do not launch any exception.

- An IEC variable for an exception has the data type __SYSTEM. ExceptionCode.
- 🔗 [ __TRY, __CATCH, __FINALLY, __ENDTRY, help.codesys.com](https://help.codesys.com/api-content/2/codesys/3.5.13.0/en/_cds_operator_try_catch_finally_endtry/#b3e0448e303c0a8640e00979ff0-id-8af3ebb8d17883fcc0a8640e0068e281)
- 🔗 [ __TRY, __CATCH, __FINALLY, __ENDTRY, infosys.beckhoff.com](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2529187211.html?id=8164276621849278358)

***
### <span style="color:grey">__VARINFO:</span>
- The operator is an extension of the IEC 61131-3 standard.
- The operator returns information about a variable.You can save information as a data structure in a data type variable __SYSTEM.VAR_INFO.
```javascript
//Syntax in the declaration:
<name of the info variable> : __SYSTEM.VAR_INFO; // Data structure for info variable

//Syntax for the call:
<name of the info variable> := __VARINFO( <variable name> ); // Call of the operator
```
```javascript
//Sample:
//In execution time, the Myvarinfo variable contains information about the NVAR variable.

VAR
    MyVarInfo : __SYSTEM.VAR_INFO;
    nVar      : INT;
END_VAR
MyVarInfo := __VARINFO(nVar);	
```
- 🔗 [__VARINFO, infosys.beckhoff.com](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/3527777675.html?id=2730070918177533256)
- 🔗 [__VARINFO, help.codesys.com](https://help.codesys.com/webapp/_cds_operator_varinfo;product=codesys;version=3.5.14.0)
***
### <span style="color:grey">TEST_AND_SET:</span>
- You can use this function to verify and establish a flag.There is no option to interrupt the process.This allows synchronizing access to data.The operating mode of a traffic light can be achieved with testandset.
- If the call call is successful, the function returns TRUE and you can access the desired data.If the call to the function is not successful, the function returns false and cannot be accessed to the desired data.In this case, an alternative treatment must be provided.

🔗 [TEST_AND_SET, Codesys](https://content.helpme-codesys.com/es/CODESYS%20Development%20System/_cds_operator_test_and_set.html)

🔗 [TESTANDSET, TwinCAT](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/31023115.html?id=6418824872038507808)
***
### <span style="color:grey">Links other operators:</span>
- 🔗 [Further operators, infosys.beckhoff.com](https://infosys.beckhoff.com/english.php?content=../content/1033/tc3_plc_intro/3998094475.html&id=)
- 🔗 [Others Operators, help.codesys.com](https://help.codesys.com/api-content/2/codesys/3.5.13.0/en/_cds_struct_reference_operators/#other-operators)
- 🔗 [stefanhenneken.net,iec-61131-3-object-composition-with-the-help-of-interfaces](https://stefanhenneken.net/2014/02/18/iec-61131-3-object-composition-with-the-help-of-interfaces/)
- 🔗 [20. TwinCAT 3: Structures: Alignment & dynamically created structures](https://www.youtube.com/watch?v=d0vkD-EVv7g)
***
### <span style="color:grey">Link to the Youtube Video 016 y 017:</span>
- 🔗 [016 - OOP IEC 61131-3 PLC -- Interface vs Herencia_2](https://youtu.be/gFJN7x_m4to) 
- 🔗 [017 - OOP IEC 61131-3 PLC -- Otros Operadores](https://youtu.be/uf7BIFNQmYE)
