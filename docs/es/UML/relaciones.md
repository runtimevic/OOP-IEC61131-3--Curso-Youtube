En la programación orientada a objetos, un objeto se relaciona con otro para utilizar la funcionalidad y el servicio proporcionados por ese objeto. Esta relación entre dos objetos se conoce como asociación en el diseño de software general orientado a objetos y se representa con una flecha en el Lenguaje Unificado de Modelado o UML.


### <span style="color:grey">Dependencias entre Clase:</span>
- Clases: Establecen relaciones para solucionar el problema planteado.
- Existen diferentes tipos de relaciones entre clases.

### <span style="color:grey">UML Relaciones Notaciones:</span>

Aquí hay notaciones UML para un tipo diferente de dependencia entre las dos clases.

![UML_Notations1](../imagenes/UML_Notations_1.png)
![UML_Notations2](../imagenes/UML_Notations_2.JPG)

### <span style="color:grey">Clasificación según la Dependencia entre Clases:</span>

- <span style="color:orange">Agregación:</span>
- <span style="color:orange">Composición:</span>

### <span style="color:grey">¿Qué es una relación de Asociación?</span>
- Una relación de asociación entre dos clases es una relación **"tiene un"**. 

- Ejemplos:

    - Un libro tiene Paginas.
  
    - Un Humano tiene corazón y sangre.(Composición)

        - Por ejemplo, la clase Humano es una composición de varias partes del cuerpo, incluidas la  mano , la pierna  y el corazón y la sangre . Cuando un objeto humano muere, todas las partes de su cuerpo dejan de existir de manera significativa, este es un ejemplo de Composición.


    - Un coche tiene un motor y estructura (Agregación ó Composición)

        - Un ejemplo de agregación podria ser el automóvil y sus partes, por ejemplo, motores, ruedas, etc. Las partes individuales del automóvil pueden existir cuando el automovil deja de funcionar.
  Este ejemplo se podria confundir visto desde otra perpectiva podria ser composición el automóvil y sus partes. Las partes individuales del automóvil no pueden funcionar cuando se destruye..

  Otro ejemplo, incluir objetos que pueden existir sin ser parte del objeto principal como un Jugador que es parte de un Equipo, puede existir sin un equipo y también puede formar parte de otros equipos.


![UML_aggregation_vs_composition](../imagenes/UML_aggregation_vs_composition.JPG)

### <span style="color:grey">Dependencia entre Clases por Agregación:</span>
- Relación débil entre clases.
- A un todo se le agregran componentes.
- El todo puede existir aunque no existan sus componentes.
- Los componentes pueden pertenecer a otros todos.
- Representación en UML:
    - Se representa por un <span style="color:orange">rombo blanco ó sin relleno.</span>

### <span style="color:grey">Dependencia entre Clases por Composición:</span>
- Relación estrecha entre clases.
- Componentes forman un todo.
- Todo formado por sus componentes. Si todo se elemina, también se eliminan sus componentes.
- La dependencia entre clases por composición se consigue añadiendo dentro de una clase otra clase en la zona de declaracion de variables (**VAR END_VAR**)
- Representación en UML: 
    - Se representa por un <span style="color:orange">rombo negro ó con relleno.</span>
- La composición es una relación como la agregación, pero más fuerte, es decir, un objeto no puede ser ese objeto sin otros objetos, por ejemplo: una silla no puede ser silla sin sus patas, un automóvil no puede ser automóvil sin sus ruedas o su motor, básicamente todos dependen de entre sí.
     
### <span style="color:grey">Diferencias entre Asociación, Agregación y composición:</span>
Tanto la Composición como la Agregación son formas de asociación entre dos objetos, pero existe una diferencia sutil entre composición y agregación , que también se refleja en su notación UML. Nos referimos a la asociación entre dos objetos como Composición  cuando una clase posee otras clases y otras clases no pueden existir de manera significativa, cuando el propietario es destruido.

Los programadores a menudo confunden entre Asociación, Composición y Agregación en las discusiones sobre diseño orientado a objetos; esta confusión también hace que la diferencia entre Asociación, Composición y Agregación sea  una de las preguntas populares..., solo después de la diferencia entre clase abstracta e interfaz.

La composición es más fuerte que la agregación. En resumen, una relación entre dos objetos se denomina asociación, y una asociación se conoce como composición cuando un objeto posee a otro, mientras que una asociación se conoce como agregación cuando un objeto usa otro objeto.

los tres denotan una relación entre objetos y solo difieren en su fuerza, también puedes verlos como se muestra a continuación, donde la composición representa la forma más fuerte de relación y la asociación es la forma más general.

![UML_Relations_circle](../imagenes/UML_relations_circle.JPG)

### <span style="color:grey">Niveles de dependencia entre clases:</span>
- 1 (relación uno y solo uno)
- 1..1 (relación uno a uno)
- 0..1 (relación de cero a uno)
- M..N (relación de M hasta N)
- M,N (relación M ó N)
- *(relación de cero a muchos)
- 1..* (relación de uno a muchos y al menos uno)

### <span style="color:grey">Vamos a ver 2 tipos de relaciones:</span>

- Asociación.
    - <span style="color:orange">De uno a uno:</span> Una clase mantiene una **asociación de a uno** con otra clase.
    - <span style="color:orange">De uno a muchos:</span> Una clase mantiene una asociación con otra clase **a través de una colección**.
    - <span style="color:orange">De muchos a muchos:</span> La **asociación se da en ambos lados** a través de una colección.
- Colaboración.
    - La colaboración se da **a través de una referencia de una clase** con el fin de **lograr un cometido**.

***
### <span style="color:grey">Links UML Relaciones:</span>
- 🔗 [Relación agregación y composición en Java](https://www.arkanapp.com/post.php?id=19#:~:text=La%20composici%C3%B3n%20es%20una%20relaci%C3%B3n,todos%20dependen%20de%20entre%20s%C3%AD.)
- 🔗 [Mensajes, agregación y clases abstractas en OOPS.](https://www.geeksforgeeks.org/messages-aggregation-and-abstract-classes-in-oops/)
- 🔗 [Diferencia entre Asociación, Composición y Agregación en Java, UML y Programación Orientada a Objetos](https://javarevisited.blogspot.com/2014/02/ifference-between-association-vs-composition-vs-aggregation.html#ixzz8Gs4zwEpe)
- 🔗 [Los 5 mejores libros y cursos de UML para que programadores de Java aprendan diseño de software en 2023](https://medium.com/javarevisited/5-best-uml-books-and-courses-for-java-programmers-13c551a9235d)
***
### <span style="color:grey">Link al Video de Youtube_31:</span>
- 🔗 [031 - OOP IEC 61131-3 PLC -- UML - Diagrama de Clases - Relaciones](https://youtu.be/2cPa-f8-BFY)