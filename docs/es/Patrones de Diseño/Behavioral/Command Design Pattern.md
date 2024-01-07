👉[**Command**](https://refactoring.guru/es/design-patterns/command) es un patrón de diseño de comportamiento que convierte una solicitud en un objeto independiente que contiene toda la información sobre la solicitud. Esta transformación te permite parametrizar los métodos con diferentes solicitudes, retrasar o poner en cola la ejecución de una solicitud y soportar operaciones que no se pueden realizar.

En el patrón de comando se definen tres capas:

- <span style="color:orange">_Invocador_ :</span> Los FB de esta capa activan el comando requerido. El invocador, no conoce el receptor del comando. Pero sabe cómo se inicia un comando.
- <span style="color:orange">_Receptor_ :</span> Estos son los FB que representan el correspondiente receptor de los comandos.
- <span style="color:orange">_Comandos_ :</span> Cada comando está representado por un FB. Este FB contiene una referencia al receptor. Además, estos comandos tienen un método para activar el comando. Si se llama a este método, el FB de comando sabe qué métodos deben ejecutarse en el receptor para lograr el efecto deseado.

El patrón de comando
Se puede ejecutar un comando en un bloque de funciones llamando a un método. El bloque de funciones A llama a un método del bloque de funciones B. Hasta aquí todo bien, pero ¿cómo se pueden intercambiar dichos comandos de manera flexible entre varios bloques de funciones? El patrón de comando proporciona un enfoque interesante.

Definición del patrón de comando
La solución al problema es introducir una capa de software. Esta capa encapsula cada comando (con un FB de comando) y contiene todas las llamadas a métodos relevantes para realizar una acción en el dispositivo. 


Un FB de comando encapsula una asignación al contener un conjunto de acciones para un determinado receptor. Para ello se combinan las acciones y la referencia del receptor en un FB. A través de cualquier método (por ejemplo, Execute() ), el comando FB garantiza que se ejecuten las acciones adecuadas en el receptor. El invocador no ve desde el exterior qué acciones son realmente estas. Solo sabe que cuando llama al método Invoke() , se realizan todos los pasos necesarios.

### <span style="color:grey">Los beneficios resultantes son bastante convincentes:</span>

- <span style="color:orange">_Desacoplamiento_ :</span> El invocador y el receptor están desacoplados entre sí. Como consecuencia, se puede diseñar de forma genérica. El método SetCommand() ofrece la posibilidad de adaptar la asignación de las claves durante el tiempo de ejecución.

- <span style="color:orange">_Ampliabilidad_ :</span> Se puede agregar cualquier FB de comando. Incluso si se proporciona una biblioteca, un programador puede definir cualquier comando FB y usarlo, sin necesidad de adaptar la biblioteca. Dado que los FB de comando adicionales implementan la interfaz I_Command , pueden ser utilizados.

### <span style="color:grey">Resumen:</span>
La idea central del patrón de comando es desacoplar el invocador y el receptor mediante objetos de comando.

- Un desarrollador puede agregar nuevos FB de comando sin adaptar el código del invocador.
- La asignación de comandos al invocador se puede realizar dinámicamente durante el tiempo de ejecución.
- Los FB de comando se pueden reutilizar en varios puntos. De este modo se evita la redundancia de código.
- Los comandos pueden volverse “inteligentes”. De esta forma, se pueden implementar comandos macro y comandos de deshacer.
***
### <span style="color:grey">Links de Patron de Diseño - Comportamiento - Command:</span>

- 🔗 [refactoring.guru/design-patterns/command](https://refactoring.guru/es/design-patterns/command)

- 🔗 [stefanhenneken.wordpress.com/iec-61131-3-the-command-pattern](https://stefanhenneken.wordpress.com/2016/12/07/iec-61131-3-the-command-pattern/)

- 🔗 [github.com/Aliazzzz/Applied-Design-Patterns-in-CODESYS-V3/Command](https://github.com/Aliazzzz/Applied-Design-Patterns-in-CODESYS-V3/tree/master/The%20-Command-%20Pattern)

- 🔗 [redrockcontrols/OOP in TwinCAT3 – Command Pattern](https://www.redrockcontrols.co.uk/?p=118)

- 🔗 [github.com/0w8States/PLC-Design-Patterns/Behavioral_Patterns/Command](https://github.com/0w8States/PLC-Design-Patterns/tree/master/Behavioral_Patterns/Command)

***
### <span style="color:grey">Link al Video de Youtube_41:</span>
- 🔗 [041 - OOP IEC 61131-3 PLC -- Patrones de Diseño - Comportamiento - Comando](https://youtu.be/5y8DbyKCN_g)