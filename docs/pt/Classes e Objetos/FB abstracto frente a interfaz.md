### <span style="color:grey"> FB Abstracto frente a Interface:</span>

la diferencia entre utilizar un bloque de función abstracto y una interfaz es que el FB Abstracto es un tipo de plantilla que define un conjunto de variables y parámetros de entrada/salida para ser utilizados en diferentes partes del programa. 

Por otro lado, una interfaz define un conjunto de métodos y atributos (propiedades) que deben ser implementados por cualquier clase que la implemente. 

En resumen, los bloques de función abstractos son útiles cuando se necesita reutilizar código en diferentes partes del programa, mientras que las interfaces son útiles cuando se quiere asegurar que determinadas clases implementen ciertos métodos.

Imaginar que tienes un programa que controla diferentes tipos de motores, como motores eléctricos, motores a gasolina y motores diesel. Para crear una estructura modular y reutilizable, podrías crear un bloque de función abstracto llamado "Controlador de Motor" que tenga entradas para el tipo de motor, la velocidad y la dirección. Luego, este bloque de función abstracto puede ser utilizado en diferentes partes del programa para controlar los diferentes motores. El bloque de función abstracto define una plantilla común que se utiliza en diferentes partes del programa. Por otro lado, si quisieras asegurarte de que todas las clases que controlan motores implementen ciertos métodos (por ejemplo, un método para encender el motor y otro para apagarlo), podrías crear una interfaz llamada "Controlador de Motor" que defina estos métodos. Luego, cualquier clase que implemente esta interfaz deberá implementar estos métodos obligatoriamente. En resumen, los bloques de función abstractos son útiles cuando se necesita reutilizar código en diferentes partes del programa, mientras que las interfaces son útiles cuando se quiere asegurar que determinadas clases implementen ciertos métodos.

- Los bloques de funciones, los métodos y las propiedades se pueden marcar como abstractos. "desde TwinCAT V3.1 build 4024".
- Los FB abstractos solo se pueden usar como FB básicos para la herencia.
- La instanciación directa de FBs abstractos no es posible.Por lo tanto, los FB abstractos tienen cierta similitud con las interfaces.

Ahora, la pregunta es en qué caso se debe usar una interfaz y en qué caso un FB abstracto.
### <span style="color:grey">Métodos abstractos:</span>
```javascript
METHOD PUBLIC ABSTRACT DoSomething : LREAL
```

- Consisten exclusivamente en la declaración y no contienen ninguna implementación. El cuerpo del método está vacío.
- Puede ser público , protegido o interno . El modificador de acceso privado no está permitido.
- No puede ser declarada adicionalmente como definitiva.
### <span style="color:grey">Propiedades abstractas:</span>
```javascript
PROPERTY PUBLIC ABSTRACT nAnyValue : UINT
```

- Puede contener getters, setters o ambos.
- Getter y setter consisten solo en la declaración y no contienen ninguna implementación.
- Puede ser público , protegido o interno . El modificador de acceso privado no está permitido.
- No puede ser declarada adicionalmente como definitiva .
### <span style="color:grey">Bloques de funciones abstractas:</span>
```javascript
FUNCTION_BLOCK PUBLIC ABSTRACT FB_Foo
```

- Tan pronto como un método o una propiedad se declaran como abstractos , el bloque de funciones también debe declararse como abstracto .
- No se pueden crear instancias a partir de FB abstractos. Los FB abstractos solo se pueden usar como FB básicos cuando se heredan.
- Todos los métodos abstractos y todas las propiedades abstractas deben sobrescribirse para crear un FB no abstracto. Un método abstracto o una propiedad abstracta se convierte en un método no abstracto o una propiedad no abstracta al sobrescribir.
- Los bloques de funciones abstractas pueden contener además métodos no abstractos y/o propiedades no abstractas.
- Si no se sobrescriben todos los métodos abstractos o todas las propiedades abstractas durante la herencia, el FB heredado solo puede ser un FB abstracto (concretización paso a paso).
- Se permiten punteros o referencias de tipo FB abstracto. Sin embargo, estos pueden referirse a FB no abstractos y, por lo tanto, llamar a sus métodos o propiedades (polimorfismo).
### <span style="color:grey">Diferencias entre un FB abstracto y una interfaz:</span>
Si un bloque de funciones consta exclusivamente de métodos abstractos y propiedades abstractas, entonces no contiene ninguna implementación y, por lo tanto, tiene cierta similitud con las interfaces. Sin embargo, hay algunas características especiales a considerar en detalle.

|  | **Interfaz**  | **FB Abstracto** |
|:------------- |:----------------| :-------------| 
| **admite herencia múltiple**         | + | - |
| **puede contener variables locales**       | - | + |
| **puede contener métodos no abstractos**          | - | + |
| **puede contener propiedades no abstractas**       | - | + |
| **admite más modificadores de acceso además de público**        | - | + | 
| **aplicable con matriz**      | + | solo através de PUNTERO |

La tabla puede dar la impresión de que las interfaces pueden reemplazarse casi por completo por FB abstractos. Sin embargo, las interfaces ofrecen una mayor flexibilidad porque se pueden usar en diferentes jerarquías de herencia.

Por lo tanto, como desarrollador, desea saber cuándo se debe usar una interfaz y cuándo se debe usar un FB abstracto. La respuesta simple es preferiblemente ambos al mismo tiempo. Esto proporciona una implementación estándar en el FB base abstracto, lo que facilita su derivación. Sin embargo, cada desarrollador tiene la libertad de implementar la interfaz directamente.
### <span style="color:grey">Ejemplo:</span>
Los bloques de funciones deben diseñarse para la gestión de datos de los empleados. Se hace una distinción entre empleados permanentes ( FB_FullTimeEmployee ) y empleados por contrato ( FB_ContractEmployee ). Cada empleado se identifica por su nombre ( sFirstName ), apellido ( sLastName ) y el número de personal ( nPersonnelNumber ). Las propiedades correspondientes se proporcionan para este propósito. Además, se requiere un método que genere el nombre completo, incluido el número de personal, como una cadena formateada ( GetFullName() ). El cálculo de los ingresos mensuales se realiza mediante el método GetMonthlySalary().

Lo resolveremos de 3 formas distintas:

- ### 1. Enfoque de solución: FB abstracto
![13.1_Abstract](../imagenes/13.1_Abstract.png)

- ### 2. Enfoque de solución: Interfaz
![13.2_Interface](../imagenes/13.2_Interface.png)

- ### 3. Enfoque de solución: combinación de FB abstracto e interfaz
![13.3_Combination](../imagenes/13.3_Combination.png)
### <span style="color:grey">Resumen, Conclusiones:</span>
- Si el usuario no debe crear una instancia propia del FB (porque esto no parece ser útil), entonces los FB abstractos o las interfaces son útiles.
- Si se quiere tener la posibilidad de generalizar en más de un tipo básico, se debe utilizar una interfaz.
- Si se puede configurar un FB sin implementar métodos o propiedades, se debe preferir una interfaz a un FB abstracto.
### <span style="color:grey">links FB Abstracto frente a Interface:</span>
- 🔗 [FB abastracto frente a interfaz, stefanhenneken.net](https://stefanhenneken.net/2020/12/13/iec-61131-3-abstract-fb-vs-interface/)

- 🔗 [The ABSTRACT keyword, www.plccoder.com ](https://www.plccoder.com/abstract/)

- 🔗 [ABSTRACT concept, infosys.beckhoff.com ](https://infosys.beckhoff.com/english.php?content=../content/1033/tc3_plc_intro/6413748235.html&id=)

***
### <span style="color:grey">Link al Video de Youtube 013:</span>
- 🔗 [013 - OOP IEC 61131-3 PLC -- FB Abstract vs Interface](https://youtu.be/b-KRLmblh6g)
