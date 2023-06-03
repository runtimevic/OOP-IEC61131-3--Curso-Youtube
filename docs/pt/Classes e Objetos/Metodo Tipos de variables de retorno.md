### <span style="color:grey">Tipos de variables de retorno:</span>
- No es obligatorio en el metodo retornar un tipo de variable.
    - Ejemplos de declaración de Métodos que nos devuelve una variable de diferentes tipos:
        ```javascript
        METHOD Method1 : BOOL
        METHOD Method1 : INT
        METHOD Method1 : REAL
        METHOD Method1 : STRING
        ```
***
### <span style="color:grey">Retorno por STRUCT:</span>
Acceso a un único elemento de un tipo de retorno estructurado durante la llamada a método/función/propiedad.

La siguiente implementación se puede utilizar para tener acceso directamente a un elemento individual del tipo de datos estructurado que devuelve el método/función/propiedad cuando se llama a un método, función o propiedad. 

Un tipo de datos estructurado es, por ejemplo, una estructura o un bloque de funciones.

El tipo devuelto del método/función/propiedad se define como:
```javascript
REFERENCE TO <structured type>
//en lugar de simplemente  
<structured type>
```
Tenga en cuenta que con este tipo de retorno, si, por ejemplo, se va a devolver una instancia local FB del tipo de datos estructurados, se debe usar el operador de referencia **REF=** en lugar del operador de asignación "normal" **:=**.

Las declaraciones y el ejemplo de esta sección se refieren a la llamada de una propiedad. Sin embargo, son igualmente transferibles a otras llamadas que ofrecen valores devueltos (por ejemplo, métodos o funciones).

### Ejemplo:

Declaración de la estructura **ST_Sample** (STRUCTURE):
```javascript
TYPE ST_Sample :
STRUCT
    bVar  : BOOL;
    nVar  : INT;
END_STRUCT
END_TYPE
```
Declaración del bloque de funciones **FB_Sample**:
```javascript
FUNCTION_BLOCK FB_Sample
VAR
    stLocal     : ST_Sample;
END_VAR
```
Declaración de la propiedad FB_Sample.MyProp con el tipo de devolución **"REFERENCE TO ST_Sample"**:
```javascript
PROPERTY MyProp : REFERENCE TO ST_Sample
```
Implementación del método Get de la propiedad **FB_Sample.MyProp**:
```javascript
MyProp REF= stLocal;
```
Implementación del método Set de la propiedad **FB_Sample.MyProp**:
```javascript
stLocal := MyProp;
```
Llamando a los métodos Get y Set en el programa principal **MAIN**:
```javascript
PROGRAM MAIN
VAR
    fbSample    : FB_Sample;
    nSingleGet  : INT;
    stGet       : ST_Sample;    
    bSet        : BOOL;
    stSet       : ST_Sample;
END_VAR
// Get - single member and complete structure possible
nSingleGet := fbSample.MyProp.nVar;
stGet      := fbSample.MyProp;
 
// Set - only complete structure possible 
IF bSet THEN
    fbSample.MyProp REF= stSet;
    bSet            := FALSE;
END_IF
```

Mediante la declaración del tipo devuelto de la propiedad MyProp como **"REFERENCE TO ST_Sample"** y mediante el uso del operador de referencia **REF=** en el método Get de esta propiedad, se puede acceder a un único elemento del tipo de datos estructurados devuelto directamente al llamar a la propiedad.
```javascript
VAR
    fbSample    : FB_Sample;
    nSingleGet  : INT;
END_VAR
nSingleGet := fbSample.MyProp.nVar;
```
Si el tipo de retorno solo se declarara como "ST_Sample", la estructura devuelta por la propiedad tendría que asignarse primero a una instancia de estructura local. Los elementos de estructura individuales podrían consultarse sobre la base de la instancia de estructura local.
```javascript
VAR
    fbSample    : FB_Sample; 
    stGet       : ST_Sample; 
    nSingleGet  : INT;
END_VAR
stGet      := fbSample.MyProp;
nSingleGet := stGet.nVar;
```
***
### <span style="color:grey">Retorno por INTERFACE:</span>
Ejemplo de declaración de un método que nos devuelve una variable del tipo **INTERFACE**.
```javascript
METHOD Method1 : interface1
```
***
### <span style="color:grey">Retorno por FUNCTION_BLOCK:</span>
Ejemplo de declaración de un método que nos devuelve una variable del tipo **FUNCTION_BLOCK**.
```javascript
METHOD Method1 : FB1
```

***
### <span style="color:grey">Link al Video de Youtube 005:</span>
- 🔗 [005 - OOP IEC 61131-3 PLC -- Objeto Metodo](https://youtu.be/fa0tUTICVF0)


