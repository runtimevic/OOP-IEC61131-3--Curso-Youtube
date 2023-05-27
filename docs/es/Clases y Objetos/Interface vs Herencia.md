### <span style="color:grey">Interface vs Herencia:</span>

### <span style="color:grey">Herencia:</span>

- Debemos definir la implementación de la clase base.
- Las clases heredadas dependen de la clase base.
- La jerarquia de herencia profunda produce alta dependencia, y esto no esta bien lo que se busca es una baja dependencia y alta cohesión.
- La jerarquia de herencia profunda puede complicarse si es necesario cambiar la clase base.
- La jerarquia de herencia profunda por regla general no deberia pasar de más de 3 niveles de herencia.
- Administrar el acceso a datos con especificadores de acceso puede ser más difícil con una gran herencia.
- La herencia múltiple en una misma Clase no es compatible.

### <span style="color:grey">Interface:</span>

- La clase base (clase abstracta) no tiene implementación.
- No hay dependencias entre las clases que implementan la misma interfaz.
- Se permite la implementación de múltiples interfaces en una misma Clase.
***
Las Interfaces y la Herencia pueden trabajar de la mano, utilizarse a la vez cogiendo de cada una lo mejor posible:

![Interface_vs_Herencia](../imagenes/Interface_vs_Herencia.png)

***
### <span style="color:grey">Links Interface vs Herencia:</span>

- 🔗 [www.techandsolve.com,alta-cohesion-y-bajo-acoplamiento-en-diseno-de-software](https://www.techandsolve.com/2022/09/alta-cohesion-y-bajo-acoplamiento-en-diseno-de-software/#:~:text=En%20este%20contexto%2C%20hablamos%20de,de%20otro%20tipo%20de%20naturaleza.)
- 🔗 [object-oriented-programming-plc-using-inheritance-ralph-koettlitz](https://www.linkedin.com/pulse/object-oriented-programming-plc-using-inheritance-ralph-koettlitz/?utm_source=share&utm_medium=member_android&utm_campaign=share_via)
- 🔗 [stefanhenneken.net,iec-61131-3-object-composition-with-the-help-of-interfaces](https://stefanhenneken.net/2014/02/18/iec-61131-3-object-composition-with-the-help-of-interfaces/)

### <span style="color:grey">Links Videos de Youtube 015 y 016:</span>
- 🔗 [015 - OOP IEC 61131-3 PLC -- Interface vs Herencia_1](https://youtu.be/etY-NtkZ85w)
- 🔗 [016 - OOP IEC 61131-3 PLC -- Interface vs Herencia_2]()