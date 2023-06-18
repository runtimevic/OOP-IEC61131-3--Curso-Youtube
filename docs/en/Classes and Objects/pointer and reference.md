### <span style="color:grey">Pointer and reference:</span>
In object-oriented programming (OOP) in PLC IEC 61131-3, pointers and references are two important concepts that are used to access the data and methods of an object.
A pointer is a variable that stores the memory address of another variable.
A reference is a variable that is used to access another variable without having to know your memory address.
### <span style="color:grey">What is a pointer?</span>

- It is a fact that points or points towards a memory direction.
- It is a variable that contains the memory address where the variable "lives".
- With the use of pointers, memory is accessed directly, so it is a good technique to reduce the execution time of one program and many other more functionalities.
### <span style="color:grey">Types of pointers:</span>

- There is a type of pointer for each type of data, program, block function, functions, etc.
- Depending on the “object” to which you want to access, a pointer of one type or another is needed.

### <span style="color:grey">Declaration of pointers:</span>

The compiler needs to know all the pointers to be used in the project,
So you have to declare them, like any other variable.
The code shows the necessary script for the declaration of various types of pointers:

```javascript
// A pointer is still a variable, the difference is that its content is not a certain value but is the address
// of memory where the variable of which you want to read or write its value is located.And just as all the
// Variables of the corresponding type.You also have to declare all the variables -punteros- that will contain those directions of
// Memory and its corresponding type.
VAR
    stTest1 : stTipo1; // Declare a STTIPO1 type data structure.

    pin01 : POINTER TO INT; // Declare a pointer to access Variables of the type int.
    ps20  : POINTER TO STRING[20]; // Declare a pointer to access variables of the string type of 20 characters.
    pa20 : POINTER TO ARRAY [1..20] OF INT; // Declare a pointer to access array type variables of 20 elements of the int.
    pDword : POINTER TO DWORD; // Declare a pointer to access Dword type variables.
    past1  : POINTER TO stTipo1; // Declare a pointer to access Sttype1 type variables.
    pReal  : POINTER TO REAL; // Declare a pointer to access real type variables.
END_VAR
```
### <span style="color:grey">.How to know what address assign to the pointer:</span>

- In order to access a variable through a pointer, you need to know your memory address,
For this, an operator called **ADR** which assigns the direction of the desired variable, to the pointer.
- It is convenient to verify that the value of the pointer is not zero, before using it.
On the other hand, to be able to read / write the value of the variable, to which the pointer indicates,
The content operator is available **^**. When reference is made to the content, the point of memory pointed out, there is talk of desectioning the pointer.An example is shown in the following code:

```javascript
PROGRAM SR_Main_02
VAR
    in01    : INT; // declaration of the in01 variable of the whole type.
    in02    : INT := 123; // Declaration and initialization of the entire in02 variable.
    in03    : INT; // declaration of the entire in03 variable.

    pint    : POINTER TO INT; // Declaration of a pointer to access variables of the entire type.
END_VAR

// Example of basic use of ADR operators and content operator ^
// shows how to assign the memory address of a variable to a pointer and how to read/write
// as well as an example of access to local variables from other programs.

pint := ADR(in01); // We assign to the pointer the direction of memory where the variable in01 is located.
pint^ := 44;     // To the memory position indicated by the pointer, we assign the value 44
                // Therefore, the in01 variable has been written the value 44.

in02 := in01; // In02 will be equal to 44.

pint := ADR(in02); // We change the address to access the direction of the Variable in02.
in03 := pint^; // in03 will take the value of the content of the memory position contained in the
               // that we have assigned the IN02 address, therefore in03 = 123.

pint := ADR(SR_Main_01.inLocalAway); // We load the memory address of a local variable of
                                     // Another program, which would be inaccessible by other means.
pint^ := 240 ; // The local variable of the SR_Main_01.inlocalaway program will take the value 240                                                
```

### <span style="color:grey">What is indirect access?</span>

The first thing, to say that it has nothing to do with a pointer.
Indirect access allows you to choose an element number within an array, there is a variable, called index, which contains the number of the array element you want to access.In this case, no other variable can be accessed beyond the elements of Array, I insist that it has nothing to do with the pointers.
With a pointer you can access any data or object that is in the control memory.With indirect access you can only access the elements of an array.
The following code shows some examples of indirect access to an array:

```javascript
PROGRAM SR_Main_01
VAR
    aR20: ARRAY[1..20] OF REAL; // Declare an array of 20 real elements.
    inIndex: INT; // Declare the array index variable for indirect access
    xNewVal: BOOL; // Indicates that there is a new reading sensor reading.
    rFuerza: REAL; // Sensor strength value.
END_VAR

// Example01: values from 1 to 20 are assigned to each element of the array by means of a loop.
FOR inIndex:=1 TO 20 BY 1 DO  // Starts by the value of the index variable to 1, up to 20
    aR20[inIndex] := inIndex; // The AR20 [Inindex] element is assigned the value of Inindex
END_FOR;                      // Inindex increases and the process is repeated.

// Example02: We create a Fifo in which we keep an analog value from outside each impulse of the XNewval signal.
IF xNewVal THEN                // If there is a new force value we perform the code.
    xNewVal := FALSE;          // XNewval signal reset.

    FOR inIndex:=20 TO 2 BY -1 DO // Index variable at 20, up to 2.
        aR20[inIndex] := aR20[inIndex-1]; // Displacement of values in the FIFO --->
    END_FOR;                             // Inindex is decreasing and the process is repeated.

    aR20[1] := rFuerza; // Strength value entry into the first element of FIFO.
END_IF
```
To this same array can be accessed using a pointer, as will be seen later, which is faster in execution time,
But not so clear for those who do not usually use the pointers.

### <span style="color:grey">Access to a data structure through pointers:</span>

The process is the same that has already been seen to access a variable of the INT type, but you will have to declare a pointer of the appropriate type, which matches the type of structure you want to access, let's see it in the following code:

```javascript
PROGRAM SR_Main_03
VAR
    stMotor_01 : stMotorCtrl; // Motor control structure 1
    stMotor_02 : stMotorCtrl; // Motor control structure 2
    stMotor_03 : stMotorCtrl; // Motor control structure 3
    pstMotorCtrl : POINTER TO stMotorCtrl; // Pointer to access Stmotorctrl type structures.
    xMarcha : BOOL; // Stockfill button.
END_VAR

// Basic example of how to access data structures through pointers.
// The data structure used is a call to Stmotorctrl, which matches a march bit, another unemployment and
// RPMS speed values and acceleration/deceleration time.

// We assign values to the structure for motor control 1.

stMotor_01.rTpoAcelDecel := 5.4; // time to accelerate/decelerate until reaching speed.
stMotor_01.rVelRpm := 1436.2; // RPM speed.
stMotor_01.xMotorOff := TRUE; // Bit to turn Motor OFF.
stMotor_01.xMotorOn := FALSE   ; // Bit to turn Motor ON.

pstMotorCtrl := ADR(stMotor_01); // We load the memory direction of the motor structure 1
stMotor_02 := pstMotorCtrl^; // Copy the content of the memory zone pointed to the
                            // Motor structure 2, in this case the result is the same
                            // that would be obtained with Stmotor_02: = Stmotor_01;

stMotor_03 := stMotor_02; // copy the same values to the motor 3;

IF xMarcha THEN         // If you press Machine
    pstMotorCtrl^.xMotorOn := TRUE; // The march bit to which the pointer points (Stmotor_01) is activated.
    pstMotorCtrl^.xMotorOff := FALSE; // The unemployment bit to which the pointer points (Stmotor_01) is deactivated
END_IF
```

### <span style="color:grey">Access to an array through pointers:</span>
The process is the same that has already been seen to access a variable of the INT type, but you will have to declare a pointer to an array of the number of elements and type of appropriate data,
Let's see it in the following code:

```javascript
PROGRAM SR_Main_03
VAR
    aintFIFO    : ARRAY[1..20] OF INT; // Array of 20 integers.
    aintFIFO2   : ARRAY[1..20] OF INT; // Array of 20 integers.
    paint       : POINTER TO ARRAY[1..20] OF INT; // Pointer al Array.
    pint        : POINTER TO INT; // Pointer to an integer.
END_VAR

// Basic example of how to access arrays through pointers:
paint := ADR(aintFIFO); // _Asign the direction of the array to the pointer.
paint^[3] := 4; // Inside the array we can access a specific element
aintFIFO2 := paint^; // or copy the entire entrey, on another array
pint := paint + (4 * SIZEOF (INT)); // You can also create an INT pointer to access one of the
                                    // Elements of Array.We take the initial direction of Array and
                                    // We add an offset of as many bytes as needed for the type of
                                    // Int data and we multiply it by the array index to which we want
                                    // to access.SIZEOF (TYPE) Returns the number of bytes according to the type of data.

pint^ := 5;                         // We assign the value of 5, aintFIFO [5]: = 5 would be the same. 
```
### <span style="color:grey">Access to data by references:</span>
Access by reference is still an access by pointer, but in this case the address of a reference is the same as that of the object to which it points.A pointer has its own direction and it contains the direction of the object to which you want to refer.
References are initialized at the beginning of the program and cannot change during their execution.
A pointer can be changed as much as necessary during the execution of the program.
Another way of understanding references is as if they were another way of referring to the same object/variable, as if it were an alias.
In front of the pointers, the references have the following advantages:

- 1) Ease of use.
- 2) Simple syntax when passing parameters to functions.
- 3) Minimize errors in the writing of the code.

The summary of all this, which can be given to a lot of confusion, is that, as will be seen later, the great value of the references is when it comes to passing great
quantities of data as input parameters to functions.

### <span style="color:grey">Various forms of parameter pass to functions:</span>

Normally a function performs operations with input parameters and returns a value - or several - as a result.
In the example that we will see then it is a function to calculate the area of a rectangle, to which we will pass the values of side A and side B to return the result of the area.

The first will define a type of data [strectangle] that will contain side A, B and the area.

We will create three rectangles, [strectum01], [stretestulo02] and [Stregangle03].

Together with three variants of the function for the calculation of the area:

- [fc_areacalcval] - Pass for values -
- [fc_areacalcpoint] - Pass by pointer -
- [fc_areacalcref] - pass by reference -

Next, the code of the three functions:

### Securities pass:
```javascript
// Function to calculate the area of a rectangle, passing the values on the sides of the rectangle
// The function returns the result of the calculated area

FUNCTION Fc_AreaCalcVal : REAL // The function retains a real number
VAR_INPUT
    i_rASide    : REAL; // Input parameter containing side A of the rectangle.
    i_rBSide    : REAL; // Input parameter containing side B of the rectangle.
END_VAR

Fc_AreaCalcVal := i_rASide * i_rBSide; // Returns the result of multiplying side A on side B.
```
### Pass by pointer:
```javascript
// Function to calculate a rectangle are
// The structure is passed by a pointer to the desired strectante structure and the function returns the result to the
// Same structure.

FUNCTION Fc_AreaCalcPoint : REAL
VAR_INPUT
    i_ptstRect : POINTER TO st_Rectangulo; // Entrance pointer with the direction of the structure.
END_VAR

// The value of the area, of the structure indicated by the address of the pointer is equal to the
// Side A value of the structure indicated by the address of the pointer by
// The value of side B of the structure indicated by the address of the pointer
i_ptstRect^.rArea := i_ptstRect^.rASide * i_ptstRect^.rBSide;
```
### Pass by reference:
```javascript
// Function to calculate a rectangle are
// The structure is passed by reference.

FUNCTION Fc_AreaCalcRef : REAL
VAR_INPUT
    i_Ref : REFERENCE TO st_Rectangulo;
END_VAR

i_Ref.rArea := i_Ref.rASide * i_Ref.rBSide;
```
### Example of call code to functions:
```javascript
PROGRAM SR_Main_01
VAR
    inLocalAway : INT; // Variable Local Integer of Mr_Main_01 to be externally accessed
    stRectangulo1 : st_Rectangulo; // Structure containing rectangle data1 A, B and its area
    stRectangulo2 : st_Rectangulo; // Structure containing rectangle2 A, B and its area
    stRectangulo3 : st_Rectangulo; // Structure containing rectangle data3 A, B and its area

    refRectangulo : REFERENCE TO st_Rectangulo := stRectangulo3; // Refers to Stretengle3   
END_VAR

// Assignment of values to the sides of the three rectangles.

// Assignment of values of the rectangle 1 sides
stRectangulo1.rAside := 44; // Side value A.
stRectangulo1.rBside := 32; // side of side B.

// Assignment of values of the rectangle 2 sides
stRectangulo2.rAside := 12.8; // Side value A.
stRectangulo2.rBside := 320.4; // side of side B.

// Assignment of values on the sides of the rectangle 3
stRectangulo3.rAside := 1024.2; // Side value A.
stRectangulo3.rBside := 2048.4; // side of side B.

// Calculation of the rectangle area passing values to the function
stRectangulo1.rArea := Fc_AreaCalcVal(i_rAside:=stRectangulo1.rAside, i_rBside:= stRectangulo1.rBside);

// Calculation of the rectangle area passing a pointer to the function
Fc_AreaCalcPoint(ADR(stRectangulo2));

// Calculation of the rectangle area by passing a reference to the function
Fc_AreaCalcRef(refRectangulo);
```
In this case, the differences may seem insignificant, since the amount of data that is passed to the function are few.But then we will see an example with a greater number of input parameters to be able to appreciate the advantages of the parameter pass by, especially, reference and also for pointer.
### <span style="color:grey">Case pass from large amounts of data to functions:</span>
When it is necessary to pass structures with a large amount of data to functions or to FB´s, the parameter pass per securities is not the most appropriate method since a large amount of input parameters are required, each parameter implies creating a new local variable ofThe function, or of the FB, which involves an expense of memory and execution time to copy the data.Case of data structures of several kbytes, or arrays of hundreds or thousands of elements, this method is unthinkable.
In the case of having to pass large amounts of data, the solution is the use of pointers, or better yet, the data pass by reference.
Then an example of a function is shown to calculate the average value of an array of 20 elements, passing the values to the function and
passing the values through a reference.

### FC_Averagevalues function code for values pass:
```javascript
// This function calculates the average of a 20 -elements buffer.Only as comparative example
// would not be a very adequate way to do so

FUNCTION Fc_AverageValues : REAL
VAR_INPUT
    i_REALV1  : REAL; // Position Value 1
    i_REALV2  : REAL; // Position value 2
    i_REALV3  : REAL; // Position value3
    i_REALV4  : REAL; // Position value 4
    i_REALV5  : REAL; // position value 5
    i_REALV6  : REAL; // Position value 6
    i_REALV7  : REAL; // Position value 7
    i_REALV8  : REAL; // Position Value 8
    i_REALV9  : REAL; // Position Value 9
    i_REALV10 : REAL; // Position Value 10 
    i_REALV11 : REAL; // Position Value 11
    i_REALV12 : REAL; // position value 12
    i_REALV13 : REAL; // Position value 13
    i_REALV14 : REAL; // position value 14
    i_REALV15 : REAL; // Position value 15
    i_REALV16 : REAL; // Position value 16
    i_REALV17 : REAL; // Position Value 17
    i_REALV18 : REAL; // Position Value 18
    i_REALV19 : REAL; // position value 19
    i_REALV20 : REAL; // Position Value 20
END_VAR

// Returns the sum of all divided values of the number of values that are 20.

Fc_AverageValues := (i_REALV1 + i_REALV2 + i_REALV3 + i_REALV4 + i_REALV5 + i_REALV6 + i_REALV7 + 
                    i_REALV8 + i_REALV9 + i_REALV10 + i_REALV11 + i_REALV12 + i_REALV13 + 
                    i_REALV14 + i_REALV15 + i_REALV16 + i_REALV17 + i_REALV18 + 
                    i_REALV19 + i_REALV20) / 20.0 ;

```
### Code of function FC_averagereference for Save by Reference:
```javascript
// This function calculates the average of a 20 -elements buffer.Only as comparative example
// passing values by reference.

FUNCTION Fc_AverageReferencia : REAL

VAR_INPUT
 i_Ref : REFERENCE TO ARRAY[1..20] OF REAL;
END_VAR
VAR
 intIdx : INT;      // Variable Index for the loop.
 rVAcum : REAL:=0; // Accumulated value.
END_VAR

// Returns the sum of all divided values of the number of values that are 20.

FOR intIdx:=1 TO 20 BY 1 DO
 rVAcum := rVAcum + i_Ref[intIdx];
END_FOR;
Fc_AverageReferencia := rVAcum / 20.0;
```
### Call example code to both functions:
```javascript
PROGRAM SR_Main_04
VAR
 arFIFO  : ARRAY[1..20] OF REAL; // FIFO with the registered force values.
 intIdx  : INT;                  // Index variable.
 rIncAng : REAL;                 // Angular increase value for sine generation.
 rValAng : REAL;                 // Current angle value.
 rValSin : REAL;                 // Amplitude of the sinusoid superimposed.
 rVMed   : REAL;                 // Calculation result.

 refFIFO : REFERENCE TO ARRAY[1..20] OF REAL := arFIFO; // Create a reference and assign it to Arfifo
 rMedRef : REAL;           // CALCULATION RESULT FOR THE EXAMPLE OF VALUE PASS BY REF.
END_VAR

// Example of how to calculate the average value of the force readings contained in Arfifo
// through the FC_AveRagevalues function (Parameter pass by values) and FcAveraageReference (Pass of
// Parameters by reference)
// What is intended is to see the advantages of the pass by reference

// Assignment of values to fill the FIFO in order to have some values for the calculation of the average
// At 124 value it overlaps a sinusoidal variation of amplitude 6

rIncAng := (2 * 3.14159) / 20.0; // 2 * Pi Radianes divided by 20 points.
rValAng := 0.0;                  // Initial angle value.

FOR intIdx :=1 TO 20 BY 1 DO
 rValSin := SIN(rValAng) * 6;    // Breast value for an amplitude of 6
 arFIFO[intIdx] := 124.0 + rValSin;  // At a level of 124.0 an amplitude breast is superimposed 6.
 rValAng := rValAng + rIncAng;       // next angular value.
END_FOR;

// With the FIFO of Securities we will call the function for the calculation of the mean passing values.
// What would not be right at all because they are many parameters.

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

// With the FIFO full of values we will call the function for the calculation of the mean passing values by reference
// To see how simple it results in this case.

rMedRef := Fc_AverageReferencia(i_Ref:=refFIFO);
```
Clearly the call to the function passing the values by reference is the best.
And in this example an example has been supposed with only 20 input data,
But the normal thing is to find applications with data structures from several kbytes.
***
- A T -TYPE POINTER POINTS TO AN OBJECT OF TYPE T (T = BASIC OR USER -DEFINED DATA)
- A Pointer Contains The Direction of the Object To Which It Points.
- The fundamental operation with a pointer is strased "display" .DERECTIONING IN CODESYS IS DONE WITH THE "^" SYmbol
- A Pointer Can Point to a Different Object at a Different Time.
- Before Disputeing A Pointer and Assigning A Value, You Must Always Verify If a Pointer Points to an Object. (Pointer = 0)?
- A reference of the T type "points" to an object of type T (t = basic or defined data type).
- A reference must be initialized with an object and its "pointing" to this object through the program.
- A reference should not be desefted as a pointer and can be used with the same syntax as the object.
- Another reference word is "Alias" (another name) a pseudonym for the object.
- The reference has no self -direction and a pointer yes.The reference address is the same as that of the "pointed" object.
- There is no reference 0, so you should never call the reference if it is not initialized.
- You must verify if you have a valid reference with the integrated keyword CODESYS "__ISVALIDREF".

The best use of pointers and references is when you want to pass or return an object of some kind to a function or block of functions by "reference" because the object is too large or wishes to manipulate the past object within the function/function block.Make sure the reader of your code knows that you will change the value of the object within the function/block of functions if this is what it intends to do when it happens as an argument.

### <span style="color:grey">.Summary / Conclusions:</span>

- **Memory contains** thousands and up to millions of cells or byte, in which the program code and all data/variables are located.Each cell has its number, which is called memory address and is usually expressed in Hexadecimal 16#FA1204 -As Example-
- **A pointer is a variable**, That instead of containing a value it contains a memory address, in which "lives" the variable we really want to access. 
- Like any other variable, **You have to declare the pointers** so that the compiler can locate them in memory.
Recall that a pointer is a variable, but that its content is a memory address.
- **For each type of variable** the corresponding one is required **Type of pointer**. 
You cannot access an INT variable with a pointer designed to access a data structure.
- Nothing has to do with **indirect access** to an array through an index variable, with a pointer.
In this case, access is limited to Array itself, with the pointer you can access any memory address.
- **With pointers you can access all types of data**, In a simple line of code you can copy an entire structure of several data kbytes.Which is much faster.
- A reference is very similar to a pointer, to simplify we could say that it is a “alias” of an object and that it is somewhat less critical than the pointers, its main utility is to pass a large amount of parameters to functions, very simplelyand fast.
- **The parameter pass to a function** It can be done in various ways, for values, by pointers or by reference, the programmer must choose the most appropriate for each application.
- When it comes to **Large amounts of data** The parameter pass by reference or pointers will be adequate

***
### <span style="color:grey">Pointer and reference links:</span>
- 🔗 [Perre Garriga,Pointer&Reference](https://www.infoplc.net/blogs-automatizacion/item/112457-punteros-programacion-plcs-basico-que-hay-que-saber)

- 🔗 [Control and use of Pointers In Codesys](https://www.youtube.com/watch?v=I_wdSAyJ6LE)

- 🔗 [help.codesys.com, Pointers](https://help.codesys.com/api-content/2/codesys/3.5.14.0/en/_cds_datatype_pointer/#ca488150a6a89ac0a8640e013d12b7-id-2afac6cf50a6a899c0a8640e001ca61a)

- 🔗 [AT&U, CODESYS - Difference between pointer and reference](https://www.youtube.com/watch?v=CAeWLPaUeuM)

- 🔗 [AT&U, CODESYS -Differente between pass by vale and pass by Reference](https://www.youtube.com/watch?v=rUfDD5FTgE0)

***
### <span style="color:grey">Link to the Youtube Video 011:</span>
- 🔗 [011 - OOP IEC 61131-3 PLC -- Puntero vs Referencia](https://youtu.be/AnJZmwQWaYQ)