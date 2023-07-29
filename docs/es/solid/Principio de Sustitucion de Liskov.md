### <span style="color:grey"> Principio de Sustitución de Liskov -- (Liskov Substitution Principle) LSP :</span>

El principio de sustitución de Liskov establece que una instancia de una subclase debe poder ser utilizada en cualquier lugar donde se espera una instancia de la clase base, sin afectar el comportamiento del programa.

### <span style="color:grey">Ejemplo:</span>

```javascript
INTERFACE I_mover
METHODS
    Mover : BOOL; // método para mover el vehículo
END_INTERFACE

FUNCTION_BLOCK Vehiculo IMPLEMENTS I_mover
// clase base para los vehículos
VAR_INPUT
    velocidad : REAL;
END_VAR

METHODS
    Mover : BOOL; // método para mover el vehículo
END_FUNCTION_BLOCK

FUNCTION_BLOCK Coche EXTENDS Vehiculo
// subclase para los coches
VAR_INPUT
    velocidadMaxima : REAL;
END_VAR

METHODS
    Mover : BOOL; // método para mover el coche
END_FUNCTION_BLOCK

FUNCTION_BLOCK Moto EXTENDS Vehiculo
// subclase para las motos
VAR_INPUT
    tiempoAceleracion : TIME;
END_VAR

METHODS
    Mover : BOOL; // método para mover la moto
END_FUNCTION_BLOCK

FUNCTION_BLOCK Conductor
VAR_INPUT
    vehiculo : REFERENCE TO Vehiculo; // referencia a la clase base Vehiculo
END_VAR

// método para mover el vehículo a la velocidad especificada
vehiculo.MoverAVelocidad(velocidad);

END_FUNCTION_BLOCK
```
En este ejemplo, se utiliza la subclase `Coche` y `Moto` como instancias de la clase base `Vehiculo`, lo que cumple con el principio de sustitución de Liskov. Esto significa que se puede utilizar cualquier instancia de `Coche` o `Moto` donde se espera una instancia de `Vehiculo`, sin afectar el comportamiento del programa.

Además, cada subclase tiene un método `Mover` que se utiliza para mover el vehículo, lo que demuestra cómo se puede utilizar la misma interfaz `I_Mover` (el mismo nombre de método) para diferentes implementaciones concretas.
***
### <span style="color:grey">Links:</span>
- 🔗 [stefanhenneken.net,iec-61131-3-solid-the-liskov-substitution-principle](https://stefanhenneken.net/2022/09/27/iec-61131-3-solid-the-liskov-substitution-principle/)
***
### <span style="color:grey">Link al Video de Youtube 026:</span>
- 🔗 [026 - OOP IEC 61131-3 PLC -- SOLID - LSP]()