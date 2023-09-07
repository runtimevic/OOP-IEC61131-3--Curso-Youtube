### <span style="color:grey">Tipos de Diseño para programacion de PLC:</span>

🚀 𝗪𝗵𝗮𝘁'𝘀 𝗮 𝗦𝗼𝗳𝘁𝘄𝗮𝗿𝗲 𝗨𝗻𝗶𝘁 ?
 
In software development, understanding what is a "Software Unit" is essential, but it's not always as straightforward as it may seem. What are the challenges and solutions of defining this critical building block according to ISO 26262?
 
🧩 𝗜𝗦𝗢 𝟮𝟲𝟮𝟲𝟮 𝗱𝗲𝗳𝗶𝗻𝗶𝘁𝗶𝗼𝗻

A software unit is the atomic level of a software component, eligible for standalone testing. It encapsulates specific functionalities and is designed for independent development and testing. Several software units collectively form a software component.
 
🎯 𝗖𝗵𝗮𝗿𝗮𝗰𝘁𝗲𝗿𝗶𝘀𝘁𝗶𝗰𝘀 𝗼𝗳 𝗮 𝗦𝗼𝗳𝘁𝘄𝗮𝗿𝗲 𝗨𝗻𝗶𝘁

1️⃣ 𝗜𝗻𝗱𝗲𝗽𝗲𝗻𝗱𝗲𝗻𝗰𝗲: It can be designed, implemented, and tested separately, making it developer-friendly.

2️⃣ 𝗥𝗲𝗾𝘂𝗶𝗿𝗲𝗺𝗲𝗻𝘁𝘀 𝗙𝗼𝗰𝘂𝘀: It exhaustively fulfills a set of well-defined requirements, ensuring traceability.

3️⃣ 𝗦𝗲𝗹𝗳-𝗖𝗼𝗵𝗲𝘀𝗶𝗼𝗻: It's highly atomic, focusing on a single functionality with minimal dependencies.

4️⃣ 𝗥𝗲𝘂𝘀𝗮𝗯𝗶𝗹𝗶𝘁𝘆: It's designed to be reused if necessary across multiple software applications for more efficiency.
 
📐 𝗦𝗶𝘇𝗲 𝗮𝗻𝗱 𝗖𝗼𝗺𝗽𝗹𝗲𝘅𝗶𝘁𝘆

Here's the main challenge: defining the ideal size and managing complexity. There’s no exact science but ISO 26262 provides guidelines which include:
1️⃣ 𝗔𝗻𝗮𝗹𝘆𝘇𝗮𝗯𝗶𝗹𝗶𝘁𝘆: Ensuring the unit's size allows easy analysis and comprehension of allocated requirements.

2️⃣ 𝗙𝘂𝗻𝗰𝘁𝗶𝗼𝗻𝗮𝗹𝗶𝘁𝘆 𝗖𝗼𝗻𝘀𝗶𝗱𝗲𝗿𝗮𝘁𝗶𝗼𝗻: Choosing the right algorithm considering the constraints of embedded software (e.g. available hardware ressources)

3️⃣ 𝗦𝗺𝗮𝗿𝘁 𝗖𝗼𝘂𝗽𝗹𝗶𝗻𝗴: Grouping highly dependent functionalities within a unit while separating decoupled features into different units.

4️⃣ 𝗧𝗲𝗰𝗵𝗻𝗶𝗰𝗮𝗹 𝗖𝗿𝗶𝘁𝗲𝗿𝗶𝗮: Using metrics, complexity analysis tools, resource limits, and partitioning techniques to guide the software unit design.
 
In the constantly evolving software landscape, understanding the challenges of defining software units is fondamental to create robust, efficient, and scalable software systems. For more details about software unit creation in model-based software development, here’s an interesting blog article: https://lnkd.in/eRipc_MQ


***
Ingenieria de desarrollo para la programación OOP:
- Diseño por Componente, Unidad, Dispositivo, Objeto...
    - Los objetos son las unidades básicas de la programación orientada a objetos.
    - Un componente proporciona servicios, mientras que un objeto proporciona operaciones y métodos. Un componente puede ser entendido por todos, mientras que un objeto solo puede ser entendido por los desarrolladores.
    - Las unidades son los grupos de código más pequeños que se pueden mantener y ejecutar de forma independiente
- Diseño por Pruebas Unitarias.
- Diseño en UML.

Units: (Ejemplo de Unidades):
- I_InputDigital(p_On, p_Off)
- I_OutputDigital(M_ON, M_OFF)
- I_InputAnalog
- I_OutputAnalog
- I_Run:(M_Start, M_Stop)


-FBTimer
-FCAnalogSensor
-FBGenericUnit

!!! puntos que se pueden incluir en el curso!!!:
- Objects composition (Composicion de Objetos)

- Basic of Structured Text programming Language
- UDT (estructuras)
- Modular Design
- Polymorphism

- Advanced State Pattern
- Wrappers and Features
- Layered Design
- Final Project covering a real-world problem to be solved using OOP

***
- [www.btc-embedded.com, component-based-architecture-in-simulink-for-efficient-unit-and-integration-test](https://www.btc-embedded.com/component-based-architecture-in-simulink-for-efficient-unit-and-integration-test/)