### <span style="color:grey">SUPER^ puntero:</span>

En la programación orientada a objetos (OOP) en PLCs, el puntero SUPER^ se utiliza para referirse al objeto o instancia de una clase superior o padre. Supongamos que tienes una clase llamada "Sensor" y otra clase llamada "Sensor_de_Temperatura", que hereda de la primera. La clase "Sensor" es la clase padre o superior y la clase "Sensor_de_Temperatura" es la clase hija o inferior. Si estás programando en la clase "Sensor_de_Temperatura" y necesitas acceder a un método o propiedad de la clase "Sensor", puedes utilizar el puntero SUPER^ para referirte a la instancia de la clase "Sensor" a la que pertenece el objeto actual. Por ejemplo, si quieres acceder al método "obtener_valor()" de la clase "Sensor", puedes hacerlo así: SUPER^.obtener_valor(). Esto indica que quieres llamar al método "obtener_valor()" de la instancia de la clase "Sensor" a la que pertenece el objeto actual.

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
