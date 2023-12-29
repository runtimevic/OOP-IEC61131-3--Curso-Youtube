### <span style="color:grey">Puntero y Referencia:</span>
En la programación orientada a objetos (OOP) en PLC IEC 61131-3, los punteros y las referencias son dos conceptos importantes que se utilizan para acceder a los datos y métodos de un objeto. 
Un puntero es una variable que almacena la dirección de memoria de otra variable. 
Una referencia es una variable que se utiliza para acceder a otra variable sin tener que conocer su dirección de memoria.
### <span style="color:grey">. ¿Qué es un puntero?</span>

- Es un dato que apunta o señala hacia una dirección de memoria.
- Es una variable que contiene la dirección de memoria donde “vive” la variable.
- Con el empleo de punteros se accede a la memoria de forma directa,por lo que es una buena técnica para reducir el tiempo de ejecución de un programa y otras muchas más funcionalidades.
### <span style="color:grey">. Tipos de Punteros:</span>

- Hay un tipo de puntero para cada tipo de dato, programa, Function Block, funciones, etc. 
- Según sea el “objeto” al que se desea acceder se necesita un puntero de un tipo u otro.

### <span style="color:grey">. Declaración de punteros:</span>

El compilador necesita conocer todos los punteros que se vayan a emplear en el proyecto,
por lo que hay que declararlos, como cualquier otra variable. 
En el código se muestra el script necesario para la declaración de varios tipos de punteros:

```javascript
// Un puntero no deja de ser una variable, la diferencia está en que su contenido no es un valor determinado sino que es la dirección 
// de memoria donde se ubica la variable de la que se quiere leer o escribir su valor. Y al igual que hay que declarar todas las
// variables del tipo correspondiente. también hay que declarar todas las variables -punteros- que contendrán esas direcciones de 
// memoria y su correspondiente tipo.
VAR
    stTest1 : stTipo1; //Declara una estructura de datos del tipo stTipo1.

    pin01 : POINTER TO INT; //Declara un puntero para acceder a variables del tipo INT.
    ps20  : POINTER TO STRING[20]; //Declara un puntero para acceder a variables del tipo STRING de 20 caracteres.
    pa20 : POINTER TO ARRAY [1..20] OF INT; //Declara un puntero para acceder a variables del tipo ARRAY de 20 elementos del tipo INT.
    pDword : POINTER TO DWORD; //Declara un puntero para acceder a variables del tipo DWORD.
    past1  : POINTER TO stTipo1; //Declara un puntero para acceder a variables del tipo stTipo1.
    pReal  : POINTER TO REAL; //Declara un puntero para acceder a variables del tipo REAL.
END_VAR
```
### <span style="color:grey">. Como saber qué dirección asignar al puntero:</span>

- Para poder acceder a una variable mediante un puntero se necesita conocer su dirección de memoria, 
Para ello se dispone de un operador llamado **ADR** que asigna la dirección de la variable deseada, al puntero.
- Es conveniente verificar que el valor del puntero no es cero, antes de utilizarlo.
Por otra parte, para poder leer / escribir el valor de la variable, a la que señala el puntero, 
se dispone del operador de contenido **^**. Cuando se hace referencia al contenido, de la dirección de memoria apuntada, se habla de desreferenciar el puntero. En el siguiente código se muestra un ejemplo:

```javascript
PROGRAM SR_Main_02
VAR
    in01    : INT; //Declaración de la variable in01 de tipo entero.
    in02    : INT := 123; //Declaración e inicialización de la variable in02 de tipo entero.
    in03    : INT; //Declaración de la variable in03 de tipo entero.

    pint    : POINTER TO INT; //Declaración de un puntero para acceder a variables del tipo entero.
END_VAR

// Ejemplo de uso básico de los operadores ADR y del operador de contenido ^
// Se muestra como asignar a un puntero la dirección de memoria de una variable y como leer/escribir
// así como un ejemplo de acceso a variables locales de otros programas.

pint := ADR(in01); //Asignamos al puntero la dirección de memoria donde se ubica la variable in01.
pint^ := 44;     //A la posición de memoria indicada por el puntero, le asignamos el valor 44
                 //Por tanto a la variable in01 se le ha escrito el valor 44.

in02 := in01; // in02 será igual a 44.

pint := ADR(in02); //Cambiamos la dirección para acceder a la dirección de la variable in02.
in03 := pint^; // in03 tomara el valor del contenido de la posición de memoria contenida en el
               // que hemos asignado la dirección de in02, por tanto in03= 123.

pint := ADR(SR_Main_01.inLocalAway); //Cargamos la dirección de memoria de una variable local de 
                                     // otro programa, la que sería inaccesible por otros medios.
pint^ := 240 ; // La varible local del programa SR_Main_01.inLocalAway tomará el valor 240                                                
```

### <span style="color:grey">. ¿Qué es un acceso indirecto?</span>

Lo primero, decir que no tiene nada que ver con un puntero.
Un acceso indirecto permite elegir un número de elemento dentro de un array, hay una variable, llamada índice, que contiene el número del elemento del array al que se desea acceder. En este caso no se puede acceder a ninguna otra variable más allá de los elementos del array, insisto en que no tiene nada que ver con los punteros.
Con un puntero se puede acceder a cualquier dato u objeto que esté en la memoria del control. Con un acceso indirecto solo se puede acceder a los elementos de un array.
En el siguiente código se muestra unos ejemplos de acceso indirecto a un array:

```javascript
PROGRAM SR_Main_01
VAR
    aR20: ARRAY[1..20] OF REAL; //Declara un array de 20 elementos del tipo REAL.
    inIndex: INT; //Declara la variable de indice del array para el acceso indirecto
    xNewVal: BOOL; //Indica que hay una nueva lectura del sensor de fuerza.
    rFuerza: REAL; //Valor de fuerza del sensor.
END_VAR

// Ejemplo01: Se asigna valores del 1 al 20 a cada elemento del array mediante un bucle.
FOR inIndex:=1 TO 20 BY 1 DO  // Se empieza por el valor de la variable indice a 1, hasta 20
    aR20[inIndex] := inIndex; // Al elemento aR20[inIndex] se le asigna el valor de inIndex
END_FOR;                      // Se incrementa inIndex y se repite el proceso.

// Ejemplo02: Creamos un FIFO en el que guardamos un valor analógico de fuera a cada impulso de la señal xNewVal.
IF xNewVal THEN                // Si hay un nuevo valor de fuerza realizamos el codigo.
    xNewVal := FALSE;          // Reset de la señal xNewVal.

    FOR inIndex:=20 TO 2 BY -1 DO // Variable indice a 20, hasta 2.
        aR20[inIndex] := aR20[inIndex-1]; //Desplazamiento de los valores en el FIFO --->
    END_FOR;                             // Se decrementa inIndex y se repite el proceso.

    aR20[1] := rFuerza; // Entrada del valor de fuerza en el primer elemento del FIFO.
END_IF
```
A este mismo array se puede acceder empleando un puntero, como se verá más adelante, lo que resulta más rápido en tiempo de ejecución, 
pero no tan claro para quien no suele usar los punteros. 

### <span style="color:grey">. Acceso a una estructura de datos mediante punteros:</span>

El proceso es el mismo que ya se ha visto para acceder a una variable del tipo INT, pero se tendrá que declarar un puntero del tipo adecuado, que coincida con el tipo de estructura a la que se desea acceder, veámoslo en el siguiente código:

```javascript
PROGRAM SR_Main_03
VAR
    stMotor_01 : stMotorCtrl; // Estructura de control del motor 1
    stMotor_02 : stMotorCtrl; // Estructura de control del motor 2
    stMotor_03 : stMotorCtrl; // Estructura de control del motor 3
    pstMotorCtrl : POINTER TO stMotorCtrl; // Puntero para acceder a estructuras del tipo stMotorCtrl.
    xMarcha : BOOL; // Pulsador marcha motores.
END_VAR

// Ejemplo básico de como acceder a estructuras de datos mediante punteros.
// La estructura de datos empleada es una llamada a stMotorCtrl, que coincide un bit de marcha, otro de paro y
// valores de velocidad en Rpms y tiempo de aceleración/deceleración.

// Asignamos valores a la estructura para el control del motor 1.

stMotor_01.rTpoAcelDecel := 5.4; // Tiempo para acelerar/decelerar hasta alcanazar la velocidad.
stMotor_01.rVelRpm := 1436.2; // Velocidad en RPM.
stMotor_01.xMotorOff := TRUE; // Bit de paro ON.
stMotor_01.xMotorOn := FALSE   ; // Bit de marcha OFF.

pstMotorCtrl := ADR(stMotor_01); // Cargamos la dirección de memoria de la estructura del motor 1
stMotor_02 := pstMotorCtrl^; // Copia el contenido de la zona de memoria apuntada a la
                             // estructura del motor 2, en este caso el resultado es el mismo
                             // que se obtendría con stMotor_02:= stMotor_01;

stMotor_03 := stMotor_02; // Copia los mismos valores al motor 3;

IF xMarcha THEN         // Si se pulsa marcha máquina
    pstMotorCtrl^.xMotorOn := TRUE; // Se activa el bit de marcha al que apunta el puntero (stMotor_01).
    pstMotorCtrl^.xMotorOff := FALSE; // Se desactiva el bit de paro al que apunta el puntero (stMotor_01)
END_IF
```

### <span style="color:grey">. Acceso a un array mediante punteros:</span>
El proceso es el mismo que ya se ha visto para acceder a una variable del tipo INT, pero se tendrá que declarar un puntero a un array del número de elementos y tipo de datos adecuados, 
veámoslo en el siguiente código:

```javascript
PROGRAM SR_Main_03
VAR
    aintFIFO    : ARRAY[1..20] OF INT; // Array de 20 enteros.
    aintFIFO2   : ARRAY[1..20] OF INT; // Array de 20 enteros.
    paint       : POINTER TO ARRAY[1..20] OF INT; // Puntero al array.
    pint        : POINTER TO INT; // Puntero a un entero.
END_VAR

// Ejemplo basico de como acceder a arrays mediante punteros:
paint := ADR(aintFIFO); // _Asignamos la dirección del array al puntero.
paint^[3] := 4; // Dentro del array podemos acceder a un elemento en concreto
aintFIFO2 := paint^; // O copiar el array apuntado entero, sobre otro array
pint := paint + (4 * SIZEOF (INT)); // Tambien se puede crear un puntero a un INT para acceder a uno de los
                                    // elementos del array. Tomamos la dirección inicial del array y le
                                    // sumampos un offeset de tantos bytes como se necesitan para el tipo de 
                                    // datos INT y lo multiplicamos por el indice del array al que queremos
                                    // acceder. SIZEOF (TYPE) retorna el número de bytes según el tipo de datos.

pint^ := 5;                         // Asignamos el valor de 5, aintFIFO[5]:=5 sería lo mismo. 
```
### <span style="color:grey">. Acceso a datos por referencias:</span>
El acceso por referencia no deja de ser un acceso por puntero, pero en este caso la dirección de una referencia es la misma que la del objeto al que apunta. Un puntero tiene su propia dirección y esta contiene la dirección del objeto al que se quiere hacer referencia. 
Las referencias se inicializan al principio del programa y no pueden cambiar durante su ejecución. 
A un puntero se le puede cambiar su dirección tanto como sea necesario durante la ejecución del programa.
Otra forma de entender las referencias es como si fuesen otra manera de referirse a un mismo objeto/variable, como si fuese un alias.
Frente a los punteros, las referencias presentan las siguientes ventajas:

- 1) Facilidad de uso.
- 2) Sintaxis más sencilla a la hora de pasar parámetros a funciones.
- 3) Minimiza errores en la escritura del código.

El resumen de todo esto, que se puede prestar a mucha confusión, es que, como se verá más adelante, el gran valor de las referencias es a la hora de pasar grandes 
cantidades de datos como parámetros de entrada a funciones.

### <span style="color:grey">. Diversas formas de pase de parámetros a funciones:</span>

Normalmente una función realiza unas operaciones con unos parámetros de entrada y retorna un valor - o varios - como resultado. 
En el ejemplo que veremos seguidamente se trata de una función para calcular el área de un rectángulo, a la que le pasaremos los valores del lado A y el lado B para que nos retorne el resultado del área. 

Lo primero definiremos un tipo de dato [stRectángulo] que contendrá el lado A, el B y el área. 

Crearemos tres rectángulos, [stRectangulo01], [stRectangulo02] y [stRectangulo03]. 

Junto con tres variantes de la función para el cálculo del área:

- [Fc_AreaCalcVal] - pase por valores - 
- [Fc_AreaCalcPoint] - pase por puntero - 
- [Fc_AreaCalcRef] - pase por referencia –

A continuación, el código de las tres funciones:

### Pase de valores:
```javascript
// Función para calcular el area de un Rectangulo, pasando los valores de los lados del Rectangulo
// la función retorna el resultado del area calculado

FUNCTION Fc_AreaCalcVal : REAL // La función retona un número real
VAR_INPUT
    i_rASide    : REAL; // Parámetro de entrada que contiene el lado A del rectangulo.
    i_rBSide    : REAL; // Parámetro de entrada que contiene el lado B del rectangulo.
END_VAR

Fc_AreaCalcVal := i_rASide * i_rBSide; // Retorna el resultado de multiplicar el lado A por el lado B.
```
### Pase por puntero:
```javascript
// Función para calcular el area de un Rectangulo, con los valores contenidos en una estructura de datos del tipo stRectangulo
// La estructura se pasa mediante un puntero a la estructura stRectangulo deseada y la función retorna el resultado a la 
// misma estructura.

FUNCTION Fc_AreaCalcPoint : REAL
VAR_INPUT
    i_ptstRect : POINTER TO st_Rectangulo; // Puntero de entrada con la dirección de la estructura.
END_VAR

// El valor del area, de la estructura indicada por la dirección del puntero es igual al
// valor del lado A de la estructura indicada por la dirección del puntero por
// el valor del lado B de la estructura indicada por la dirección del puntero
i_ptstRect^.rArea := i_ptstRect^.rASide * i_ptstRect^.rBSide;
```
### Pase por Referencia:
```javascript
// Función para calcular el area de un Rectangulo, con los valores contenidos en una estructura de datos del tipo stRectangulo
// La estructura se pasa por referencia.

FUNCTION Fc_AreaCalcRef : REAL
VAR_INPUT
    i_Ref : REFERENCE TO st_Rectangulo;
END_VAR

i_Ref.rArea := i_Ref.rASide * i_Ref.rBSide;
```
### Ejemplo de código de llamadas a las funciones:
```javascript
PROGRAM SR_Main_01
VAR
    inLocalAway : INT; // Variable integer local de SR_Main_01 para ser accedida externamente
    stRectangulo1 : st_Rectangulo; // Estructura que contiene los datos del rectangulo1 A, B y su area
    stRectangulo2 : st_Rectangulo; // Estructura que contiene los datos del rectangulo2 A, B y su area
    stRectangulo3 : st_Rectangulo; // Estructura que contiene los datos del rectangulo3 A, B y su area

    refRectangulo : REFERENCE TO st_Rectangulo := stRectangulo3; // Hace Referencia a stRectangulo3   
END_VAR

// Asignación de valores a los lados de los tres rectángulos.

// Asignación de valores de los lados del rectángulo 1
stRectangulo1.rAside := 44; //Valor del lado A.
stRectangulo1.rBside := 32; //Valor del lado B.

// Asignación de valores de los lados del rectángulo 2
stRectangulo2.rAside := 12.8; //Valor del lado A.
stRectangulo2.rBside := 320.4; //Valor del lado B.

// Asignación de valores de los lados del rectángulo 3
stRectangulo3.rAside := 1024.2; //Valor del lado A.
stRectangulo3.rBside := 2048.4; //Valor del lado B.

// Cálculo del área del rectángulo pasando valores a la función
stRectangulo1.rArea := Fc_AreaCalcVal(i_rAside:=stRectangulo1.rAside, i_rBside:= stRectangulo1.rBside);

// Cálculo del área del rectángulo pasando un puntero a la función
Fc_AreaCalcPoint(ADR(stRectangulo2));

// Cálculo del área del rectángulo pasando una referencia a la función
Fc_AreaCalcRef(refRectangulo);
```
En este caso puede que las diferencias pueden parecer insignificantes, puesto que la cantidad de datos que se le pasan a la función son pocos. Pero seguidamente veremos un ejemplo con mayor número de parámetros de entrada para poder apreciar las ventajas del pase de parámetros por, especialmente, referencia y también por puntero.

### <span style="color:grey">.Caso de pase de grandes cantidades de datos a funciones:</span>
Cuando se precisa pasar estructuras con gran cantidad de datos a funciones ó a FB´s, el pase de parámetros por valores no es el método más adecuado puesto que se requieren gran cantidad de parámetros de entrada, cada parámetro implica crear una nueva variable local de la función, o del FB, lo que supone gasto de memoria y tiempo de ejecución en copiar los datos. Caso de estructuras de datos de varios Kbytes, o arrays de centenares o miles de elementos, este método es impensable. 
En el caso de tener que pasar grandes cantidades de datos, la solución es el empleo de punteros, o mejor aún, el pase de datos por referencia. 
Seguidamente se muestra un ejemplo de una función para calcular el valor promedio de un array de 20 elementos, pasando los valores a la función y 
pasando los valores mediante una referencia.

### Código de la función Fc_AverageValues para pase de valores:
```javascript
// Esta función calcula la media de un buffer de 20 elementos. Solo a modo de ejemplo comparativo
// no sería una forma muy adecuada de hacerlo así

FUNCTION Fc_AverageValues : REAL
VAR_INPUT
    i_REALV1  : REAL; //Valor posición 1
    i_REALV2  : REAL; //Valor posición 2
    i_REALV3  : REAL; //Valor posición 3
    i_REALV4  : REAL; //Valor posición 4
    i_REALV5  : REAL; //Valor posición 5
    i_REALV6  : REAL; //Valor posición 6
    i_REALV7  : REAL; //Valor posición 7
    i_REALV8  : REAL; //Valor posición 8
    i_REALV9  : REAL; //Valor posición 9
    i_REALV10 : REAL; //Valor posición 10
    i_REALV11 : REAL; //Valor posición 11
    i_REALV12 : REAL; //Valor posición 12
    i_REALV13 : REAL; //Valor posición 13
    i_REALV14 : REAL; //Valor posición 14
    i_REALV15 : REAL; //Valor posición 15
    i_REALV16 : REAL; //Valor posición 16
    i_REALV17 : REAL; //Valor posición 17
    i_REALV18 : REAL; //Valor posición 18
    i_REALV19 : REAL; //Valor posición 19
    i_REALV20 : REAL; //Valor posición 20
END_VAR

//Retorna la suma de todos los valores dividida del número de valores que son 20.

Fc_AverageValues := (i_REALV1 + i_REALV2 + i_REALV3 + i_REALV4 + i_REALV5 + i_REALV6 + i_REALV7 + 
                    i_REALV8 + i_REALV9 + i_REALV10 + i_REALV11 + i_REALV12 + i_REALV13 + 
                    i_REALV14 + i_REALV15 + i_REALV16 + i_REALV17 + i_REALV18 + 
                    i_REALV19 + i_REALV20) / 20.0 ;

```
### Código de la función Fc_AverageReferencia para pase por referencia:
```javascript
// Esta función calcula la media de un buffer de 20 elementos. Solo a modo de ejemplo comparativo
// pasando valores por referencia.

FUNCTION Fc_AverageReferencia : REAL

VAR_INPUT
 i_Ref : REFERENCE TO ARRAY[1..20] OF REAL;
END_VAR
VAR
 intIdx : INT;      // Variable indice para el bucle.
 rVAcum : REAL:=0; // Valor acumulado.
END_VAR

// Retorna la suma de todos los valores divida del número de valores que son 20.

FOR intIdx:=1 TO 20 BY 1 DO
 rVAcum := rVAcum + i_Ref[intIdx];
END_FOR;
Fc_AverageReferencia := rVAcum / 20.0;
```
### Código de ejemplo de llamada a ambas funciones:
```javascript
PROGRAM SR_Main_04
VAR
 arFIFO  : ARRAY[1..20] OF REAL; // FIFO con los valores de fuerza registrados.
 intIdx  : INT;                  // Variable de indice.
 rIncAng : REAL;                 // Valor de incremento angular para generación de senoide.
 rValAng : REAL;                 // Valor actual de angulo.
 rValSin : REAL;                 // Amplitud de la senoide superpuesta.
 rVMed   : REAL;                 // Resultado del cálculo.

 refFIFO : REFERENCE TO ARRAY[1..20] OF REAL := arFIFO; // Crea una referencia y la asigna a arFIFO
 rMedRef : REAL;           // Resultado del cálculo para el ejemplo de pase de valores por Ref.
END_VAR

// Ejemplo de como realizar el cálculo del valor medio de las lecturas de fuerza contenidas en arFIFO
// mediante la función Fc_AverageValues (Pase de parámetros por valores) y Fc_AverageReferencia (Pase de
// parámetros por referencia)
// Lo que se pretende es ver las ventajas del pase por referencia

// Asignación de valores para llenar el FIFO a efectos de tener algunos valores para el cálculo de la media
// al valor 124 le superpone una variación senoidal de amplitud 6

rIncAng := (2 * 3.14159) / 20.0; // 2 * PI Radianes dividido entre 20 puntos.
rValAng := 0.0;                   // Valor inicial del angulo.

FOR intIdx :=1 TO 20 BY 1 DO
 rValSin := SIN(rValAng) * 6;         // Valor del seno para una amplitud de 6
 arFIFO[intIdx] := 124.0 + rValSin;  // A un nivel de 124.0 se superpone un seno de amplitud 6.
 rValAng := rValAng + rIncAng;       // Próximo valor angular. 
END_FOR;

// Con el FIFO de valores llamaremos a la función para el cálculo de la media pasando valores.
// Lo que no sería para nada adecuado por tratarse de muchos parámetros.

rVMed:= Fc_AverageValues( i_REALV1  := arFIFO[1],
                          i_REALV2  := arFIFO[2],
                          i_REALV3  := arFIFO[3],
                          i_REALV4  := arFIFO[4], 
                          i_REALV5  := arFIFO[5],
                          i_REALV6  := arFIFO[6], 
                          i_REALV7  := arFIFO[7],
                          i_REALV8  := arFIFO[8],
                          i_REALV9  := arFIFO[9],
                          i_REALV10 := arFIFO[10],
                          i_REALV11 := arFIFO[11],
                          i_REALV12 := arFIFO[12],
                          i_REALV13 := arFIFO[13],
                          i_REALV14 := arFIFO[14],
                          i_REALV15 := arFIFO[15],
                          i_REALV16 := arFIFO[16],
                          i_REALV17 := arFIFO[17],
                          i_REALV18 := arFIFO[18],
                          i_REALV19 := arFIFO[19],
                          i_REALV20 := arFIFO[20]);

// Con el FIFO lleno de valores llamaremos a la función para el cálculo de la media pasando valores por referencia
// para ver lo sencillo que resulta en este caso.

rMedRef := Fc_AverageReferencia(i_Ref:=refFIFO);
```
Claramente la llamada a la función pasando los valores por referencia es la mejor.
Y en este ejemplo se ha supuesto un ejemplo con solo 20 datos de entrada,
pero lo normal es encontrar aplicaciones con estructuras de datos de varios Kbytes.
***
- Un puntero de tipo T apunta a un objeto de tipo T (T = tipo de datos básico o definido por el usuario)
- Un puntero contiene la dirección del objeto al que apunta.
- La operación fundamental con un puntero se llama "desreferenciar". La desreferenciación en CODESYS se realiza con el símbolo "^"
- Un puntero puede apuntar a un objeto diferente en un momento diferente.
- Antes de desreferenciar un puntero y asignarle un valor, siempre debe verificar si un puntero apunta a un objeto. (puntero = 0)?
- Una referencia del tipo T "apunta" a un objeto del tipo T (T = tipo de datos básico o definido por el usuario).
- Una referencia debe ser inicializada con un objeto y su "apuntando" a este objeto a través del programa.
- Una referencia no debe ser desreferenciada como un puntero y puede usarse con la misma sintaxis que el objeto.
- Otra palabra de referencia es "Alias" (otro nombre) un seudónimo para el objeto.
- La referencia no tiene dirección propia y un puntero sí. La dirección de la referencia es la misma que la del objeto "puntiagudo".
- No hay referencia 0, por lo que nunca debe llamar a la referencia si no está inicializada.
- Debe verificar si tiene una referencia válida con la palabra clave integrada CODESYS "__ISVALIDREF".

El mejor uso de punteros y referencias es cuando desea pasar o devolver un objeto de algún tipo a una función o bloque de funciones por "referencia" porque el objeto es demasiado grande o desea manipular el objeto pasado dentro de la función/bloque de función. Asegúrese de que el lector de su código sepa que va a cambiar el valor del objeto dentro de la función/bloque de funciones si esto es lo que pretende hacer cuando lo pasa como argumento.

### <span style="color:grey">.Resumen / Conclusiones:</span>

- **La memoria contiene** miles y hasta millones de celdas o byte, en las que se ubica el código del programa y todos los datos/variables. Cada celda tiene su número, al que se llama dirección de memoria y que se suele expresar en hexadecimal 16#FA1204 -como ejemplo-
- **Un puntero es una variable**, que en lugar de contener un valor contiene una dirección de memoria, en la que “vive” la variable a la que realmente queremos acceder. 
- Al igual que cualquier otra variable, **hay que declarar los punteros** para que el compilador pueda ubicarlos en la memoria. 
Recordemos que un puntero es una variable, pero que su contenido es una dirección de memoria.
- **Para cada tipo de variable** se precisa el correspondiente **tipo de puntero**. 
No se puede acceder a una variable INT con un puntero pensado para acceder a una estructura de datos.
- Nada tiene que ver el **acceso indirecto** a un array mediante una variable de índice, con un puntero. 
En este caso el acceso está limitado al propio array, con el puntero se puede acceder a cualquier dirección de memoria.
- **Con punteros se puede acceder a todo tipo de datos**, en una simple línea de código se puede copiar una estructura entera de varios Kbytes de datos. Lo que resulta mucho más rápido.
- Una referencia se parece mucho a un puntero, para simplificar podríamos decir que es un “alias” de un objeto y que es algo menos crítico que los punteros, su principal utilidad es la de pasar gran cantidad de parámetros a funciones, de forma muy simple y rápida.
- **El pase de parámetros a una función** se puede realizar de diversas formas, por valores, por punteros o por referencia, el programador deberá elegir el más adecuado para cada aplicación.
- Cuando se trata de **grandes cantidades de datos** el pase de parámetros por referencia o por punteros, serán los adecuados

***
### <span style="color:grey">Links de Puntero y Referencia:</span>
- 🔗 [Perre Garriga,Pointer&Reference](https://www.infoplc.net/blogs-automatizacion/item/112457-punteros-programacion-plcs-basico-que-hay-que-saber)

- 🔗 [Control and use of Pointers In Codesys](https://www.youtube.com/watch?v=I_wdSAyJ6LE)

- 🔗 [help.codesys.com, Pointers](https://help.codesys.com/api-content/2/codesys/3.5.14.0/en/_cds_datatype_pointer/#ca488150a6a89ac0a8640e013d12b7-id-2afac6cf50a6a899c0a8640e001ca61a)

- 🔗 [AT&U, CODESYS - Difference between pointer and reference](https://www.youtube.com/watch?v=CAeWLPaUeuM)

- 🔗 [AT&U, CODESYS -Differente between pass by vale and pass by Reference](https://www.youtube.com/watch?v=rUfDD5FTgE0)

- 🔗 [Ninja Monkeys Tutorials, 21. TwinCAT 3: Pointer and References](https://www.youtube.com/watch?v=av0Lpw5KdjE)

- 🔗 [Tutorial #26: Zeiger (Pointer) in CoDeSys](https://www.youtube.com/watch?v=xccZTZLvinQ)

- 🔗 [www.hemelix.com, structured-text-memory-management](https://www.hemelix.com/plc/structured-text-memory-management/)
***
### <span style="color:grey">Link al Video de Youtube 011:</span>
- 🔗 [011 - OOP IEC 61131-3 PLC -- Puntero vs Referencia](https://youtu.be/AnJZmwQWaYQ)