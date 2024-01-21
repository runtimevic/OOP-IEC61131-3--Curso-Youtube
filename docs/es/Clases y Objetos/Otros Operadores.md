
### <span style="color:grey">Otros Operadores:</span>

### <span style="color:grey">__DELETE:</span>
- El operador es una extensión del estándar IEC 61131-3.
- El operador libera la memoria de instancias, que el operador __NEW generó dinámicamente. 
- El operador DELETE no tiene valor de retorno y el operando se establece en 0 después de esta operación.
```javascript
//Syntax:
 __DELETE (<Pointer>)
```
- Si un puntero apunta a un bloque de funciones, TwinCAT llama al método correspondiente FB_exit antes de que el puntero se establezca en 0.

- 🔗 [__DELETE, infosys.beckhoff.com](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2529160331.html?id=2289870734872430416)
- 🔗 [__DELETE, help.codesys.com](https://help.codesys.com/api-content/2/codesys/3.5.12.0/en/_cds_operator_delete/)
***
### <span style="color:grey">__ISVALIDREF:</span>
- El operador es una extensión del estándar IEC 61131-3.
- El operador se utiliza para comprobar si una referencia apunta a un valor. Por lo tanto, la verificación es comparable con una verificación de 'desigual a 0' en el caso de una variable de puntero.
- Puede encontrar una descripción de la aplicación y una muestra del uso del operador en la descripción del tipo de datos REFERENCE.
- El operador __ISVALIDREF solo se puede utilizar para operandos de tipo REFERENCE TO. Este operador no se puede utilizar para comprobar las variables de la interfaz. Para verificar si a una variable de interfaz ya se le asignó una instancia de bloque de funciones, puede verificar que la variable de interfaz no sea igual a 0 (IF iSample <> 0 THEN …).
```javascript
//Syntax: 
<Boolean variable> := __ISVALIDREF(<with REFERENCE TO <data type> declared identifier);
```
- 🔗 [__ISVALIDREF, infosys.beckhoff.com](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2529165707.html?id=8190095739921439819)
- 🔗 [__ISVALIDREF, help.codesys.com](https://help.codesys.com/api-content/2/codesys/3.5.14.0/en/_cds_operator_isvalidref/)
***

### <span style="color:grey">__NEW:</span>
- El operador es una extensión del estándar IEC 61131-3.
- El operador __NEW asigna memoria para instancias de bloques de funciones o matrices de tipos de datos estándar. El operador devuelve un puntero con tipo adecuado al objeto. Si no utiliza el operador dentro de una asignación, TwinCAT emite un mensaje de error.
- Si falla el intento de asignación de memoria, __NEW devuelve el valor 0.
- La memoria dinámica se asigna desde el grupo de memoria del enrutador.
- Información de estado del enrutador TwinCAT :
El bloque de funciones FB_GetRouterStatusInfo de la biblioteca Tc2_Utilities se puede utilizar para leer información de estado del enrutador TwinCAT, como la memoria del enrutador disponible, desde el PLC.
```javascript
//Syntax:
 __NEW (<Type>,[<Length>])
```
- Ningún cambio de tipo es posible a través del cambio en línea
- Un módulo de función/DUT, que se puede crear con __NEW, ocupa un área de memoria fija. No puede cambiar su diseño de datos utilizando la función de cambio en línea. Esto significa que no se pueden agregar nuevas variables, no se pueden eliminar variables y no se pueden cambiar tipos. Esto garantiza que el puntero a este objeto siga siendo válido después del cambio en línea.
- Por esta razón, el operador __NEW solo se puede aplicar a bloques de función/DUT de bibliotecas y a bloques de función/DUT con el **{attribute 'enable_dynamic_creation'}**. Si se modifica la interfaz de un bloque de función/DUT de este tipo, TwinCAT emite un mensaje de error.

- 🔗 [__NEW, infosys.beckhoff](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2529171083.html?id=5409766235804740463)
- 🔗 [__NEW, help.codesys.com](https://help.codesys.com/api-content/2/codesys/3.5.14.0/en/_cds_operator_new/)
***
### <span style="color:grey">__QUERYINTERFACE:</span>
- El operador es una extensión del estándar IEC 61131-3.
- En tiempo de conversión, el operador realiza un tipo de referencia de interfaz a otra. El operador devuelve un resultado de tipo BOOL. TRUE significa que TwinCAT realizó la conversión con éxito.
```javascript
//Syntax: 
__QUERYINTERFACE(<ITF_Source>,<ITF_Dest>)
```
- 1er operando: referencia de interfaz o instancia de FB.
- 2.º operando: referencia de interfaz con los tipos de destino requeridos.El segundo parámetro contiene una referencia a la interfaz solicitada.

Un requisito previo para la conversión explícita es que tanto ITF_Source como ITF_Dest sean derivados de __System.IQueryInterface. Esta interfaz está implícitamente disponible y no requiere biblioteca.

- 🔗 [__QUERYINTERFACE, infosys.beckhoff.com](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2529176459.html?id=8921520647493442581)
- 🔗 [__QUERYINTERFACE, help.codesys.com](https://help.codesys.com/api-content/2/codesys/3.5.13.0/en/_cds_operator_queryinterface/#d1ae1a1daa87f58c0a8640e0179dbc5-id-05c12751daa87f58c0a8640e010610d5)
***
### <span style="color:grey">__QUERYPOINTER:</span>
- El operador es una extensión de IEC61131-3.
- El operador habilita la conversión de tipo de una referencia de interfaz de un bloque de funciones a un puntero en tiempo de ejecución. El operador devuelve un resultado de tipo BOOL. TRUE significa que TwinCAT realizó la conversión con éxito.
- Por razones de compatibilidad, la definición del puntero a convertir debe ser una extensión de la interfaz básica __SYSTEM.IQueryInterface.
```javascript
//Syntax: 
__QUERYPOINTER (<ITF_Source>, <Pointer_Dest>)
```
- El primer operando asignado al operador es una referencia de interfaz o una instancia de FB con los tipos de destino deseados, el segundo operando es un puntero. Después de procesar __QUERYPOINTER, Pointer_Dest contiene el puntero a la referencia o instancia de un bloque de funciones, al que apunta actualmente la referencia de interfaz ITF_Source. Pointer_Dest no tiene tipo y se puede convertir a cualquier tipo. Asegúrese de que el tipo sea correcto. Por ejemplo, la interfaz podría ofrecer un método que devuelva un código de tipo.
- 🔗 [__QUERYPOINTER, infosys.beckhoff.com](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2529181835.html?id=8665610409656000922)
- 🔗 [__QUERYPOINTER, help.codesys.com](https://help.codesys.com/api-content/2/codesys/3.5.13.0/en/_cds_operator_querypointer/#a8ba732dbe7195dc0a8640e00227cc8-id-5fcc73e6dbe7195dc0a8640e0044a2da)
***
### <span style="color:grey">__TRY, __CATCH, __FINALLY, __ENDTRY:</span>
- Los operadores son una extensión del estándar IEC 61131-3 y se utilizan para un manejo de excepciones específico en el código IEC.
- Disponible desde TC3.1 compilación 4024 para sistemas de tiempo de ejecución de 32 bits.
- Ahora también está disponible para sistemas de destino de 64 bits a partir de TwinCAT versión 3.1.4026
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
- Si una instrucción que aparece bajo el operador __Try genera una excepción, el programa del PLC no se detiene. En su lugar, ejecuta las instrucciones bajo _CATCH y, por lo tanto, inicia el manejo de excepciones. A continuación, se ejecutan las instrucciones bajo __FINALLY. El manejo de excepciones termina con __ENDTRY. A continuación, el programa de PLC ejecuta las instrucciones posteriores (instrucciones después de __ENDTRY).

- Las instrucciones del bloque _TRY, que se encuentran debajo de la instrucción que desencadena la excepción, ya no se ejecutan. Esto significa que tan pronto como se descarta la excepción, se cancela la ejecución posterior del bloque _TRY y se ejecutan las instrucciones bajo _CATCH.

- Las instrucciones bajo _FINALLY siempre se ejecutan, es decir, incluso si las instrucciones bajo _TRY no lanzan ninguna excepción.

- Una variable IEC para una excepción tiene el tipo de datos __SYSTEM.ExceptionCode.
- 🔗 [ __TRY, __CATCH, __FINALLY, __ENDTRY, help.codesys.com](https://help.codesys.com/api-content/2/codesys/3.5.13.0/en/_cds_operator_try_catch_finally_endtry/#b3e0448e303c0a8640e00979ff0-id-8af3ebb8d17883fcc0a8640e0068e281)
- 🔗 [ __TRY, __CATCH, __FINALLY, __ENDTRY, infosys.beckhoff.com](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2529187211.html?id=8164276621849278358)

***
### <span style="color:grey">__VARINFO:</span>
- El operador es una extensión del estándar IEC 61131-3. 
- El operador devuelve información sobre una variable. Puede guardar la información como una estructura de datos en una variable de tipo de datos __SYSTEM.VAR_INFO.
```javascript
//Syntax in the declaration:
<name of the info variable> : __SYSTEM.VAR_INFO; // Data structure for info variable

//Syntax for the call:
<name of the info variable> := __VARINFO( <variable name> ); // Call of the operator
```
```javascript
//Sample:
//En tiempo de ejecución, la variable MyVarInfo contiene la información sobre la variable nVar.

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
- Puede usar esta función para verificar y establecer una bandera. No hay opción para interrumpir el proceso. Esto permite sincronizar los accesos a los datos. El modo de operación de un semáforo se puede lograr con TestAndSet.
- Si la llamada a la función tiene éxito, la función devuelve VERDADERO y se puede acceder a los datos deseados. Si la llamada a la función no tiene éxito, la función devuelve FALSO y no se puede acceder a los datos deseados. En este caso, se debe prever un tratamiento alternativo.

🔗 [TEST_AND_SET, Codesys](https://content.helpme-codesys.com/es/CODESYS%20Development%20System/_cds_operator_test_and_set.html)

🔗 [TESTANDSET, TwinCAT](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/31023115.html?id=6418824872038507808)

- El bloque de funciones FB_IecCriticalSection ofrece la aplicación de secciones críticas como método Mutex alternativo.
***
- https://github.com/runtimevic/OOP-IEC61131-3--Curso-Youtube/issues/13
- Design Pattern Creational Protoype:

Answering your question about __Delete and could we change the variable so it wouldn't live

A pointer is just an address to an object. If I use __NEW on a function block, it will create that object in memory, and will then update your pointer to point to it.

If you call __Delete on a pointer, it will find the object in memory and mark it for deletion. This deletion may not happen immediately, you have simply told the system you no longer want that object.

The object does not live inside the pointer, a point is just a variable which holds the address of an object, which you can then use ^ to make the pointer appear to be the object it points to. (called dereferencing)

As an example, if I were to do this...
```
myPointer := __NEW(Heater); // the heater object would be made, and the address of the heater object would go in myPointer
myPointer := 0; // I have just reset the pointer.  The heater object **still exists** in memory.  I've just overwritten my only way to access it
```
So, the pointer is not the object, only a special variable which holds the address of an object and can also pretend to be the object by using the ^ to dereference it.

The order of events should be..

Create an object using __NEW
Use an object
Mark an an object for deletion once you are finished using __DELETE
(at some point the system will delete the object, most of the time it happens between PLC cycles)
The system will delete objects marked for deletion and we do not fully know (or care) when this will happen as we are already finished with it. This is a system level thing which is done for us.

In your code you are doing the following

Make the circle
Delete the circle
Use the circle <- Here you are using a circle which has already been marked for deletion. Here be danger.
System removes the circle
You can see the bug if you set a breakpoint in your code and single step through it. When single stepping through the code, you will see that they system has already removed your object before you have a chance to use it.

Instead you should remove __DELETE from your clone method. Just return the new object as ITF_Shape as you are currently doing.

You must then implement a way to delete the object. My suggestion is to make ITF_Shape have a .Dispose() method. This way, after you finish drawing the circle you can call .Dispose(). I.e. you mark it for deletion only after you have finished using it.

The circle's dispose method should contain
```
METHOD Dispose

__DELETE(THIS);
```
***
### <span style="color:grey">Links Otros Operadores:</span>
- 🔗 [Further operators, infosys.beckhoff.com](https://infosys.beckhoff.com/english.php?content=../content/1033/tc3_plc_intro/3998094475.html&id=)
- 🔗 [Others Operators, help.codesys.com](https://help.codesys.com/api-content/2/codesys/3.5.13.0/en/_cds_struct_reference_operators/#other-operators)
- 🔗 [stefanhenneken.net,iec-61131-3-object-composition-with-the-help-of-interfaces](https://stefanhenneken.net/2014/02/18/iec-61131-3-object-composition-with-the-help-of-interfaces/)
- 🔗 [20. TwinCAT 3: Structures: Alignment & dynamically created structures](https://www.youtube.com/watch?v=d0vkD-EVv7g)
***
### <span style="color:grey">Links Videos de Youtube 016, 017 y 018:</span>
- 🔗 [016 - OOP IEC 61131-3 PLC -- Interface vs Herencia_2](https://youtu.be/gFJN7x_m4to) 
- 🔗 [017 - OOP IEC 61131-3 PLC -- Otros Operadores1](https://youtu.be/uf7BIFNQmYE)
- 🔗 [018 - OOP IEC 61131-3 PLC -- Otros Operadores2](https://youtu.be/rJUqVwoA2d8)
