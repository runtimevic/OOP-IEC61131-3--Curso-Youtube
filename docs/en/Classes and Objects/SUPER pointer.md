### <span style="color:grey">Super^ pointer:</span>

In object -oriented programming (OOP) In Plcs, the super^ pointer is used to refer to the object or instance of a superior class or father.Suppose you have a class called "sensor" and another class called "temperature sensor", which inherits the first.The "sensor" class is the father or superior class and the class "temperature sensor" is the daughter or lower class.If you are programming in the "Temperature sensor" class and you need to access a "sensor" class or property, you can use the super^ pointer to refer to the instance of the "sensor" class to which the current object belongs.For example, if you want to access the "Obtain_ value () method of the" sensor "class, you can do so: super^.ObTain_valor ().This indicates that you want to call the "obtain_ value () method from the" sensor "class to which the current object belongs.

cada bloque de funciones que se deriva de otro bloque de funciones tiene acceso a un puntero llamado SUPER^. 
Esto se puede usar para acceder a elementos (métodos, propiedades, variables locales, etc.) desde el bloque de funciones principal.

En lugar de copiar el código del bloque de funciones principal al nuevo método, el puntero SUPER^ se puede usar para llamar al método desde el bloque de funciones  . Esto elimina la necesidad de copiar el código.

```javascript
SUPER^();                 // Llamada del cuerpo FB de la clase base.
SUPER^.METH_DoIt();       // Llamada del método METH_DoIt que se implementa en la clase base.
```
### <span style="color:grey">Ejemplo:</span>

- Usando los punteros SUPER y THIS:

Bloque de Función -- FB_Base:
```javascript
FUNCTION_BLOCK FB_Base
VAR_OUTPUT
    nCnt : INT;
END_VAR
```
Metodo -- FB_Base.METH_DoIt:
```javascript
METHOD METH_DoIt : BOOL
nCnt := -1;
```
Metodo -- FB_Base.METH_DoAlso:
```javascript
METHOD METH_DoAlso : BOOL
METH_DoAlso := TRUE;
```
Bloque de Función -- FB_1:
```javascript
FUNCTION_BLOCK FB_1 EXTENDS FB_Base
VAR_OUTPUT
    nBase: INT;
END_VAR
THIS^.METH_DoIt();      // llamada al metodo METH_DoIt del FB_1.
THIS^.METH_DoAlso();

SUPER^.METH_DoIt();     // llamada al metodo METH_DoIt del FB_Base.
SUPER^.METH_DoAlso();
nBase := SUPER^.nCnt;
```
Metodo -- FB_1.METH_DoIt:
```javascript
METHOD METH_DoIt : BOOL
nCnt := 1111;    
METH_DoIt := TRUE;
```
Metodo -- FB_1.METH_DoAlso:
```javascript
METHOD METH_DoAlso : BOOL
nCnt := 123;    
METH_DoAlso := FALSE;
```
Programa MAIN:
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

- 🔗 [help.codesys.com, SUPER](https://help.codesys.com/api-content/2/codesys/3.5.14.0/en/_cds_pointer_super/)

- 🔗 [stefanhenneken.net,iec-61131-3-methods-properties-and-inheritance](https://stefanhenneken.net/2017/04/23/iec-61131-3-methods-properties-and-inheritance/)

***
### <span style="color:grey">Link al Video de Youtube 009:</span>
- 🔗 [009 - OOP IEC 61131-3 PLC -- Punteros THIS^ y SUPER^](https://youtu.be/S3YdAHyBc6I)
