### Variable types and special variables:


The variable type defines how and where you can use the variable. The variable type is defined during the variable declaration.

### Further Information:
- [Local Variables - VAR](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528755083.html)
    - The local variables are declared in the declaration part of the programming objects between the keywords VAR and END_VAR.
    - You can extend local variables with a keyword of attribute.
    - You can access local variables to read from outside the programming objects through the instance route.Access to write from outside the programming object is not possible;This will be shown by the compiler as an error.
    - To maintain the enhanced data encapsulation, it is strongly not recommended to access the local variables of a POU From outside of POU, neither in reading mode nor in writing mode.(Other high -level language compilers also generate reading access operations to local variables such as errors).In addition, with the library functions blocks it cannot be guaranteed that the local variables of a block of functions remain unchanged during subsequent updates.This means that it is possible that the application project can no longer be compiled correctly after the library update.
    - Also observe here the SA0102 rule of static analysis, which determines access to local variables for reading from abroad.
- [Input Variables - VAR_INPUT](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528760459.html)
    - The input variables are input variables for a block of functions.
    - VAR_INPUT variables are declared in the declaration part of the programming objects between the keywords VAR_INPUT and END_VAR.
    - You can expand the input variables with a keyword of attribute.
- [Output Variables - VAR_OUTPUT](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528765835.html)
    - The output variables are output variables of a block of functions.
    - VAR_OUTPUT variables are declared in the declaration part of the programming objects between the keywords VAR_OUTPUT and END_VAR. TwinCAT Returns the values of these variables to the call function block.There you can consult the values and continue using them.
    - You can expand output variables with a keyword of attribute.
- [Input/Output Variables - VAR_IN_OUT, VAR_IN_OUT CONSTANT](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528771211.html)
- [Global Variables - VAR_GLOBAL](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528776587.html)
    - Only your statement is possible in GVL (Variable List Global)
- [Temporary Variable - VAR_TEMP](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528781963.html)
    - This functionality is an extension with respect to the norm IEC 61131-3.
    - Temporary variables are declared locally among the keywords VAR_TEMP and END_VAR.
    - VAR_TEMP statements are only possible in **programs and blocks of functions.**
    - TwinCAT It reset the temporal variables every time the functions block is called.
    - The application can only access temporary variables in the implementation part of a program or block of functions.
- [Static Variables - VAR_STAT](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528787339.html)
    - This functionality is an extension with respect to the norm IEC 61131-3.
    - The static variables are declared locally among the keywords VAR_STAT and END_VAR. TwinCAT Initializes static variables when the respective functions block is first called.
    - You can have access to static variables only within the name space where the variables are declared (as is the case of static variables in c).However, static variables retain their value when the application leaves the functions block.You can use static variables, such as counters for calls to functions, for example.
    - You can extend static variables with a keyword of attribute.
    - Static variables exist only once.This also applies to the static variables of a block of functions or a block of functions, even if the functions block is instance several times.
- [External Variables - VAR_EXTERNAL](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528792715.html)
    - External variables are global variables that are "imported" in a block of functions.
    - You can declare the variables between the keywords VAR_EXTERNAL and END_VAR. If the global variable does not exist, an error message is issued.	
    - In TwinCAT 3 PLC It is not necessary that the variables be declared as external.The keyword exists to maintain compatibility with IEC 61131-3.
    - If, however, use external variables, be sure to address the assigned variables (with at %or at %q) only in the global list of variables.The additional addressing of the instances of local variables would lead to duplications in the image of the process.
    - These declared variables also have to be declared the same variable with the same name in a GVL (Global Varaibles List)
- [Instance Variables - VAR_INST](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528798091.html)
    - TwinCAT Create a variable VAR_INST of a method not in the battery of methods such as variables VAR, but in the pile of the instance of the Function Block.This means that the variable VAR_INST It behaves like other variables of the instance of the function block and is not reset every time the method is called.
    - VAR_INST Variables are only allowed in the methods of a block of functions, and access to said variable is only available within the method.It can supervise the values of the instance variables in the partial part of the method.
    - The instance variables cannot be extended with a keyword of attribute.
- [Remanent Variables - PERSISTENT, RETAIN](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528803467.html)
The remaining variables can keep their values beyond the usual execution time of the program.The remaining variables can be declared as variables RETAIN or even strictly as persistent variables in the project PLC.

A previous requirement for the complete functionality of the variables RETAIN It is a corresponding memory area in the controller (Novram).Persistent variables are written only when TwinCAT turns off.This will generally require a corresponding UPS.Exception: Persistent variables can also be written with the FB_WritePersistantData function block.

If the corresponding memory area does not exist, the values of the variables RETAIN and PERSISTENT They are lost during an energy cut.

The declaration AT It should not be used in combination with VAR RETAIN or VAR PERSISTENT.
### Persistent variables
You can declare persistent variables by adding the keyword PERSISTENT After the keyword for the type of variable (VAR, VAR_GLOBAL, etc.) in the declaration part of the programming objects.

Variables PERSISTENT They retain their value after an un controlled termination, a reset catd or a new project discharge PLC.
When the program is restarted, the system continues to function with stored values.In this case, TwinCAT It reset the "normal" variables with their initial values explicitly specified or with the default initializations.
In other words, Twincat only reset the variables PERSISTENT during an origin of restoring.

An example of application for persistent variables is a operating counter, which must continue to count after an energy cut and when the PLC project is downloaded again.

Avoid using the data type POINTER TO In lists of persistent variables, since the management values can change when the PLC project is downloaded again. TwinCAT issues the corresponding warnings of the compiler.
Declare a local variable such as PERSISTENT In a function it has no effect.Data persistence cannot be used in this way.
Behavior during cold restoration can be influenced by the pragma 'tcinitonreset'
***
### Variables RETAIN
You can declare variables RETAIN adding the keyword RETAIN After the keyword for the type of variable (VAR, VAR_GLOBAL, etc.) in the declaration part of the programming objects.

The variables declared as RETAIN They depend on the destination system, but they are usually administered in a separate memory area that must be protected against energy failures.The so -called Retain driver ensures that the variables RETAIN They are written at the end of a PLC cycle and only in the corresponding area of the Novram.The handling of the retention controller is described in the "conserve data" chapter of the documentation of C/C ++.

Variables RETAIN They retain their value after uncontrolled termination (energy cut).When the program is restarted, the system continues to function with stored values.In this case, Twincat reset the "normal" variables with their explicitly specified initial values or with default initializations.
TwinCAT Restapatizes the retain variables in a restoration origin.

A possible application is a pieces in a production plant, which must continue to count after a power cut.

If you declare a local variable like RETAIN In a program or block of functions, TwinCAT Store this specific variable in the retention area (such as a global reteain variable).
If you declare a local variable in a function as a retain, this has no effect.Twincat does not store the variable in the retention area.

### Complete general picture
The degree of retention of retain variables is automatically included in the variables PERSISTENT.

| **After online command**  | **VAR**  | **VAR RETAIN** | **VAR PERSISTENT** |
|:------------- |:----------------| :-------------| :-------------|
| Rest cold         | Values are reset | The values are maintained       | The values are maintained     |
| Restore origin       | Values are reset | Values are reset   | Values are reset |
| descargar                | The values are reset | The values are maintained       | The values are maintained     |
| Online change          | The values are maintained     | The values are maintained       | The values are maintained     |

***
- [SUPER](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528837771.html)
- [THIS](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528843147.html)
- [Variable types - attribute keywords](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528848523.html)
    - [RETAIN: for remanent variables of type RETAIN](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528803467.html)
    - [PERSISTENT: for remanent variables of type PERSISTENT](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528803467.html)
    - [CONSTANT: for constants](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2529284235.html#2529371275)

***
### <span style="color:grey">Links:</span>
- 🔗 [Local Variables - VAR, infosys.beckhoff.com/](https://infosys.beckhoff.com/english.php?content=../content/1033/tc3_plc_intro/2528755083.html&id=)

- 🔗 [Instance Variables - VAR_INST, infosys.beckhoff.com/](https://infosys.beckhoff.com/english.php?content=../content/1033/tc3_plc_intro/2528798091.html&id=)

- 🔗 [www.plccoder.com/instance-variables-with-var_inst](https://www.plccoder.com/instance-variables-with-var_inst/)

- 🔗 [www.plccoder.com/var_temp-var_stat-and-var_const](https://www.plccoder.com/var_temp-var_stat-and-var_const/)

- 🔗 [Tipos de variables y variables especiales](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528749707.html?id=3782076432056683724)
