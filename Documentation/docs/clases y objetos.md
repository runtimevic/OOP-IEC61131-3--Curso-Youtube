<span style="color:grey"><font size="4">
. Clases y Objetos:
</font></span>

- Una Clase es una **plantilla**.
- Un Objeto es la **instancia de una Clase**.

![ClaseyObjetos1](./imagenes/OOP-Class-and-Object.jpg)

```text
En este Ejemplo Nos encontramos la Clase Coche,
y hemos instanciado esta Clase para tener los Objetos de Coches 
Mercedes, Bmw y Audi...
```
Representacion de la Clase Coche en STL OOP IEC61131-3
```iecst
FUNCTION_BLOCK Coche
VAR_INPUT
END_VAR
VAR_OUTPUT
END_VAR
VAR
	_Marca : STRING;
	_Color : STRING;
	accion : STRING;
END_VAR
----------------------------------------------------------------
METHOD PUBLIC Acelerar
accion := 'acelerar';
----------------------------------------------------------------
METHOD PUBLIC Conducir
accion := 'conducir';
----------------------------------------------------------------
METHOD PUBLIC Frenar
accion := 'frenar';
----------------------------------------------------------------
PROPERTY PUBLIC Color : STRING
Get
    Color := _Color;
Set
    _Color := Color;
----------------------------------------------------------------
PROPERTY PUBLIC Marca : STRING
Get
    Marca := _Marca;
Set
    _Marca := Marca;
```
Instancia de la clase en los Objetos: Mercedes,Bmw y Audi y llamadas a sus metodos y propiedades...
```iecst
PROGRAM _01_Clase_y_Objetos
VAR
	// tenemos la Clase Coche y la instanciamos y obtenemos los Objetos: Mercedes, Bmw y Audi.
	Mercedes : Coche;
	Bmw : Coche;
	Audi: Coche;
	
	Color : STRING;
	Marca : STRING;
	
	Acelerar : BOOL;
	Conducir:  BOOL;
	Frenar  : BOOL;	
END_VAR

//Objeto Mercedes
//llamadas a sus métodos.
IF Acelerar THEN
	Mercedes.Acelerar();
	Acelerar := FALSE;
END_IF

IF Conducir THEN
	Mercedes.Conducir();
	Conducir := FALSE;
END_IF

IF Frenar THEN
	Mercedes.Frenar();
	Frenar := FALSE;
END_IF

//llamadas a sus propiedades.
Mercedes.Marca := 'Mercedes';
Mercedes.Color := 'Negro';
Color := Mercedes.Color;
```
