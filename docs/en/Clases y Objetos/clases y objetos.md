### <span style="color:grey">Classes and objects:</span>

- A class is a **template**.
- An object is the **instance of a class**.

![ClaseyObjetos1](../imagenes/OOP-Class-and-Object.jpg)

```text
In this example we find the car class,
And we have ordered this class to have car objects
Mercedes, Bmw y Audi...
```
### <span style="color:grey">CLASS REPRESENTATION OF CLASS IN STL OOP IEC 61131-3</span>
```iecst
FUNCTION_BLOCK Car
VAR_INPUT
END_VAR
VAR_OUTPUT
END_VAR
VAR
	_Brand : STRING;
	_Color : STRING;
	action : STRING;
END_VAR
----------------------------------------------------------------
METHOD PUBLIC Speed ​​up
action := 'speed up';
----------------------------------------------------------------
METHOD PUBLIC Drive
action := 'drive';
----------------------------------------------------------------
METHOD PUBLIC Curb
action := 'curb';
----------------------------------------------------------------
PROPERTY PUBLIC Color : STRING
Get
    Color := _Color;
Set
    _Color := Color;
----------------------------------------------------------------
PROPERTY PUBLIC Brand : STRING
Get
    Brand := _Brand;
Set
    _Brand := Brand;
```
Class instance in objects: Mercedes, BMW and Audi and calls to their methods and properties...
```iecst
PROGRAM _01_Classes_and_objects
VAR
	// We have the car class and establish it and get the objects: Mercedes, Bmw y Audi.
	Mercedes : Car;
	Bmw : Car;
	Audi: Car;
	
	Color : STRING;
	Brand : STRING;
	
	Speed ​​up : BOOL;
	Drive:  BOOL;
	Curb  : BOOL;	
END_VAR

//Objeto Mercedes
//llamadas a sus métodos.
IF Speed ​​up THEN
	Mercedes.Speed ​​up();
	Speed ​​up := FALSE;
END_IF

IF Drive THEN
	Mercedes.Drive();
	Drive := FALSE;
END_IF

IF Curb THEN
	Mercedes.Curb();
	Curb := FALSE;
END_IF

//llamadas a sus propiedades.
Mercedes.Brand := 'Mercedes';
Mercedes.Color := 'Negro';
Color := Mercedes.Color;
```
### <span style="color:grey">Links:</span>

- 🔗 [methods-properties-and-inheritance (stefanhenneken)](https://stefanhenneken.net/2017/04/23/iec-61131-3-methods-properties-and-inheritance/)

- 🔗 [Object Oriented Industrial Programming (OOIP) -- March 2021 CODESYS Tech Talk](https://www.youtube.com/watch?v=vRGaW4L762k)

- 🔗 [Clase de Programación Orientada a Objetos en una hora ! Cómo crear tus entidades, herencia y más](https://www.youtube.com/watch?v=2jfIfeY4lrQ)

***
### <span style="color:grey">Link to the Youtube Video 002:</span>
- 🔗 [002 - OOP IEC 61131-3 PLC -- Clase y Objeto](https://youtu.be/3IudQIj1noo)
