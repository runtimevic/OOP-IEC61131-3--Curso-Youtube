
### <span style="color:grey">Análisis y Diseño de un sistema orientado a objetos:</span>

- Durante el desarrollo de un sistema se recomienda seguir la siguiente fases:

### <span style="color:grey">Proceso de Desarrollo:</span>

- <span style="color:orange">Análisis:</span>
    - Vamos a pensar en el problema y vamos a identificar los elementos con los cuales vamos a trabajar a lo largo del desarrollo. Una vez que hemos identificado estos elementos de manera superficial pasamos a la siguiente fase.

- <span style="color:orange">Diseño:</span>

    - Durante esta fase vamos ya a definir cual va a ser el comportamiento de cada uno de los elementos que habiamos definido en la fase de analisis, tambien estableceremos las relaciones entre elementos.

    - Para esta fase de diseño podemos utilizar los Diagramas UML, mediante estos diagramas vamos a poder modelar lo que va a ser finalmente el sistema. Esta fase se puede optar por no hacerla pero si se esta diseñando un sistema mediano a gran tamaño y/ó con cierta complejidad se recomienda no saltarse este paso.

    - Los Diagrams UML mas utilizados son:

        - Diagrama de Clases:

            - Representar cada una de las clases de nuestro sistema y sus relaciones entre ellas, tambien representaremos dentro de cada clase los atributos, propiedades y metodos que va a contener cada clase.

        - Diagrama de Casos de uso:

            - Sirve basicamente para modelar el comportamiento de un sistema, subsistema o una clase. Este sistema también va a incluir a los usuarios y su interacción con las funciones del sistema.

        - Diagrama de Secuencia:

            - El diagrama de Secuencia es un tipo de diagrama usado para modelar interacción entre objetos en un sistema según UML.

            - Los diagramas de Secuencia son una solución de modelado dinámico popular en UML porque se centran específicamente en líneas de vida o en los procesos y objetos que coexisten simultáneamente, y los mensajes intercambiados entre ellos para ejecutar una función antes de que la línea de vida termine.

- <span style="color:orange">Codificación:</span>

    - En esta fase escribiremos el codigo que va a dar vida a lo que hemos analizado y diseñado previamente.

***
### 🚀 <span style="color:grey">¿ Qué es una Unidad de Software ?</span>
 
En el desarrollo de software, comprender qué es una **"Unidad de Software"** es esencial, pero no siempre es tan sencillo como parece. ¿Cuáles son los desafíos y las soluciones para definir este componente crítico?
 
### 🧩 <span style="color:grey">D𝗲𝗳𝗶𝗻𝗶c𝗶ó𝗻:</span>

Una unidad de software es el nivel atómico de un componente de software, elegible para pruebas independientes. Encapsula funcionalidades específicas y está diseñado para desarrollo y pruebas independientes. Varias unidades de software forman colectivamente un componente de software.

### 🎯 <span style="color:grey">Caracteristicas de la Unidad de Software:</span>

1️⃣ <span style="color:orange">**Indepencia:**</span> Puede diseñarse, implementarse y probarse por separado, lo que lo hace fácil de usar para los desarrolladores.

2️⃣ <span style="color:orange">**Enfoque de Requisitos:**</span> Cumple de forma exhaustiva un conjunto de requisitos bien definidos, asegurando la trazabilidad.

3️⃣ <span style="color:orange">**Auto-𝗖𝗼𝗵𝗲𝘀𝗶𝗼𝗻:**</span> Es altamente atómico y se centra en una única funcionalidad con dependencias mínimas.

4️⃣ <span style="color:orange">**Reutilización:**</span> Está diseñado para ser reutilizado si es necesario en múltiples aplicaciones de software para una mayor eficiencia.
 
### 📐 <span style="color:grey">Tamaño y Complejidad:</span>

Aquí está el principal desafío: definir el tamaño ideal y gestionar la complejidad. No existe una ciencia exacta, pero se pueden proporcionar pautas que incluyen: 

1️⃣ <span style="color:orange">**Analizabilidad:**</span> Garantizar que el tamaño de la unidad permita un fácil análisis y comprensión de los requisitos asignados.

2️⃣ <span style="color:orange">**Consideración de funcionalidad:**</span> Elegir el algoritmo correcto teniendo en cuenta las desventajas limitaciones del software integrado (por ejemplo, recursos de hardware disponibles)

3️⃣ <span style="color:orange">**Acoplamiento Inteligente:**</span> Agrupar funcionalidades altamente dependientes dentro de una unidad mientras se separan funciones desacopladas en diferentes unidades.

4️⃣ <span style="color:orange">**Criterios Técnico:**</span> Uso de métricas, herramientas de análisis de complejidad, límites de recursos y técnicas de partición para guiar el diseño de la unidad de software.
 
En el panorama del software en constante evolución, comprender los desafíos que plantea la definición de unidades de software es fundamental para crear sistemas de software robustos, eficientes y escalables.

***
### <span style="color:grey">Ingenieria de desarrollo para la programación OOP:</span>
- Diseño por Unidad,Componente,Dispositivo, Objeto...
    - Los objetos son las unidades básicas de la programación orientada a objetos.
    - Un componente proporciona servicios, mientras que un objeto proporciona operaciones y métodos. 
    - Un componente puede ser entendido por todos, mientras que un objeto solo puede ser entendido por los desarrolladores.
    - Las unidades son los grupos de código más pequeños que se pueden mantener y ejecutar de forma independiente.
- Diseño por Pruebas Unitarias.
- Diseño en UML.

Units: (Ejemplo de Unidades):

- I_InputDigital(p_On, p_Off)
- I_OutputDigital(M_ON, M_OFF)
- I_InputAnalog
- I_OutputAnalog
- I_Run:(M_Start, M_Stop)

- FBTimer
- FCAnalogSensor
- FBGenericUnit


- Objects Composition (Composicion de Objetos).

- Conceptos básicos del lenguaje de programación de texto estructurado (ST).
- UDT (estructuras).
- Diseño Modular.
- Polimorfismo.

- Patrones de Diseño: Patron de estado Avanzado.
- Envoltorios y caracteristicas.
- Diseño en Capas.
- Objetivo Proyecto final que cubre un problema del mundo real a resolver utilizando programación orientada a objetos OOP

***
### <span style="color:grey">Links Tipos de Diseño para programación de PLC:</span>
- 🔗 [www.btc-embedded.com, component-based-architecture-in-simulink-for-efficient-unit-and-integration-test](https://www.btc-embedded.com/component-based-architecture-in-simulink-for-efficient-unit-and-integration-test/)
***
### <span style="color:grey">Link al Video de Youtube_33:</span>
- 🔗 [033 - OOP IEC 61131-3 PLC -- Tipos de Diseño para programación OOP]( https://youtu.be/k2PBfaXRzoI)