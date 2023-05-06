### <span style="color:grey"> Principio de Segregación de Interfaz -- (Interface Segregation Principle) ISP :</span>

El principio de segregación de interfaz establece que una clase no debe implementar interfaces que no utilice y que debe dividirse en interfaces más pequeñas y específicas.

### <span style="color:grey">Ejemplo:</span>

```javascript
INTERFACE IAveVoladora
// interfaz para las aves voladoras
METHODS
    Volar : BOOL; // método para volar
END_INTERFACE

INTERFACE IAveNadadora
// interfaz para las aves nadadoras
METHODS
    Nadar : BOOL; // método para nadar
END_INTERFACE

INTERFACE IAveCorredora
// interfaz para las aves corredoras
METHODS
    Correr : BOOL; // método para correr
END_INTERFACE

FUNCTION_BLOCK Pato IMPLEMENTS IAveVoladora, IAveNadadora // implementa las interfaces IAveVoladora e IAveNadadora
VAR_INPUT
    velocidad : REAL;
    alturaMaxima : REAL;
    tiempoBuceo : TIME;
END_VAR

// implementación para el pato
// métodos para volar y nadar

END_FUNCTION_BLOCK

FUNCTION_BLOCK Aguila IMPLEMENTS IAveVoladora // implementa la interfaz IAveVoladora solamente
VAR_INPUT
    velocidad : REAL;
    alturaMaxima : REAL;
END_VAR

// implementación para el águila
// método para volar

END_FUNCTION_BLOCK

FUNCTION_BLOCK Avestruz IMPLEMENTS IAveCorredora // implementa la interfaz IAveCorredora solamente
VAR_INPUT
    velocidad : REAL;
    tiempoCorriendo : TIME;
END_VAR

// implementación para el avestruz
// método para correr

END_FUNCTION_BLOCK
```
De esta manera, cada clase tiene solo los métodos necesarios y se divide en interfaces más pequeñas y específicas. Además, se utilizan interfaces en lugar de function blocks para implementar el principio de segregación de interfaz. Esto permite una mayor flexibilidad y evita la necesidad de implementar métodos innecesarios en una clase.
***
### <span style="color:grey">Links:</span>
- 🔗 [stefanhenneken.net,iec-61131-3-solid-the-interface-segregation-principle](https://stefanhenneken.net/2023/02/25/iec-61131-3-solid-the-interface-segregation-principle/)

- 🔗 [IEC 61131-3: SOLID – The Interface Segregation Principle](https://stefanhenneken.net/2023/02/25/iec-61131-3-solid-the-interface-segregation-principle/#more-2505)