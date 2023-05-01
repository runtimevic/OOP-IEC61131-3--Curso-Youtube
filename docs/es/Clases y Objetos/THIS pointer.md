### <span style="color:grey">THIS^ puntero:</span>

El puntero THIS^ se utiliza para referenciar la instancia actual de una clase en un programa orientado a objetos.
En otras palabras, cuando se crea un objeto de una clase, el puntero THIS^ se utiliza para acceder a los atributos y métodos de ese objeto específico. Por ejemplo, si tenemos una clase llamada "Motor" con un atributo "velocidad" y un método "acelerar", al crear un objeto de la clase Motor, podemos utilizar el puntero THIS^ para hacer referencia a ese objeto y modificar su velocidad o acelerar.

El puntero **THIS^** está disponible para todos los bloques de funciones y apunta a la instancia de bloque de funciones actual. 
Este puntero es necesario siempre que un método contenga una variable local que oculte una variable en el bloque de funciones.

Una declaración de asignación dentro del método establece el valor de la variable local. 
Si queremos que el método establezca el valor de la variable local en el bloque de funciones, necesitamos usar el puntero THIS^ para acceder a él.

Al igual que con el puntero SUPER, el puntero THIS también debe estar siempre en mayúsculas.

```javascript
THIS^.METH_DoIt();
```
### <span style="color:grey">Ejemplos:</span>

- La variable del bloque de funciones nVarB se establece aunque nVarB está oculta.

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

nVarB := 22; // Se establece la variable local nVarB.
THIS^.nVarB := 222; // La variable del bloque de funciones nVarB se establece aunque nVarB está oculta.

PROGRAM MAIN
VAR
   fbMyfbB : FB_B;
END_VAR

fbMyfbB(nVarA:=0, nVarB:= 0);
fbMyfbB.DoIt();
```

- Una llamada de función necesita la referencia a la propia instancia de FB.

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

nVarB := 22;  //Se establece la variable local nVarB.
F_FunA(fbMyFbA := THIS^);  //F_FunA es llamado via THIS^.

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
### <span style="color:grey">Link al Video de Youtube 009:</span>
- 🔗 [009 - OOP IEC 61131-3 PLC -- Punteros THIS^ y SUPER^](https://youtu.be/S3YdAHyBc6I)
