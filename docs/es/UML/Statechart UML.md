### <span style="color:grey">UML State Chart:</span>

- Un diagrama de estado es una máquina que cambia de un estado a otro en tiempo de ejecución. 
- Los estados están unidos por transiciones, cada una de las cuales tiene una condición de guardia. Se pueden llamar acciones o métodos tanto en estados como en transiciones. Cuando una condición de guardia obtiene el valor TRUE(evento), se activará la transición. Esto ejecuta las acciones o métodos que pertenecen a la transición y luego cambia al siguiente estado. Las condiciones de guardia son simplemente variables booleanas que reflejan eventos o son una expresión. Los eventos son entradas del usuario de una visualización/interfaz de usuario, E/S, eventos de tiempo o eventos del sistema. Otro evento que a menudo se requiere es el evento de finalización que ocurre cuando se completan las acciones o métodos de un estado.

- Inserta todos los estados requeridos en el editor de diagrama de estado e implementa el control de flujo. Para hacer esto, codifique las condiciones de protección para las transiciones especificando una variable booleana o una expresión ST. Implementas la funcionalidad real del diagrama de estado en las acciones y métodos que se llaman en los estados o durante las transiciones.

Por tanto, los métodos y acciones asignados a un diagrama de estado contienen los algoritmos. Así es como se implementa el concepto de clase orientada a objetos de forma convencional.

Durante la fase de diseño del software, ya puede utilizar el editor de gráficos de estado como herramienta de diseño. Por ejemplo, puede crear un archivo de gráficos (BMP) a partir de un diagrama de estado para agregarlo a una especificación o un documento de diseño.

- Identifica todos los estados que tendrá la máquina.

- Identificar las posibles transiciones de estado de un estado a otro.

- Identificar los eventos que ocurren durante el tiempo de ejecución de la máquina y que desencadenan una transición de estado. Agrupa los eventos relevantes cronológicamente.

- Identifique las ENTRY acciones o métodos DO de, y EXIT para llamar durante un estado.

- Identifique acciones o métodos para llamar durante las transiciones.

- Definir el comportamiento en caso de error.
***
### <span style="color:grey"> Diagrama de Estado:</span>
- Un diagrama de estado es un formalismo gráfico con el que se puede programar gráficamente una máquina de estados finitos. Una máquina de estados es un sistema que se encuentra continuamente en uno de un número finito de estados en tiempo de ejecución. Las acciones se pueden ejecutar en cada estado. Cuando ocurre un evento, se produce una transición al siguiente estado. También se pueden realizar acciones durante la transición.

- En CODESYS, TwinCAT un diagrama de estado es una POU que se crea en el lenguaje de implementación de Statechart. Este tipo de POU se identifica por el_uml_icon_statechart.png símbolo en la vista POU o en la vista Dispositivos. Puede crear programas, bloques de funciones, funciones, métodos, acciones o propiedades como diagramas de estado. El editor proporciona elementos para estados, pseudoestados y transiciones.

- Tanto los estados como las transiciones pueden llamar métodos o acciones. Los pseudoestados son elementos de control que se utilizan para controlar el proceso, pero no invocan ninguna acción ni método.
***
<span style="color:orange">Imagen UML TwinCAT StateChart Simbols:</span>

![UML TwinCAT StateChart Simbols](../imagenes/UML_TwinCAT_StateChart_Simbols.JPG)

<span style="color:orange">Imagen UML Codesys StateChart Simbols:</span>

![UML Codesys StateChart Simbols](../imagenes/UML_Codesys_StateChart_Simbols.JPG)

<span style="color:orange">Imagen UML Codesys StateChart CoffeMachine:</span>

![UML Codesys Statechart CoffeMachine](../imagenes/UML_Codesys_StateChart_CoffeMachine.JPG)

<span style="color:orange">Imagen UML TwinCAT StateChart:</span>

![UML TwinCAT Statechart](../imagenes/UML_TwinCAT_StateChart.JPG)

***
- En TwinCAT para utilizar UML State Chart, se podra utilizar con el TF1910, el cual tendra un coste de licencia según el Performance Level (PL)
- En Codesys para utilizar UML State Chart, se podra utilizar con el ide Codesys Professional Developer Edition, según el informe de caracteristicas realizado en otoño de 2023 (pongo link mas abajo) UML State Chart sera discontinuado en el Q1 2024 (minuto del video 35:09), desde mi punto de vista es un gran error ya que no se deben de perder las diferentes posibilidades de programación si no todo lo contrario se deben de mantener y añadir nuevos lenguajes y formas de programar para que sea el usuario el que decida que utilizar...

***
### <span style="color:grey">Links UML State Chart:</span>
- 🔗 [infosys.beckhoff.com, tf1910_tc3_uml](https://infosys.beckhoff.com/english.php?content=../content/1033/tf1910_tc3_uml/3161408011.html&id=)
- 🔗 [content.helpme-codesys.com, UML State Chart](https://content.helpme-codesys.com/en/CODESYS%20UML/f_uml_sc.html)
- 🔗 [content.helpme-codesys.com, uml_sc_simple_machine](https://content.helpme-codesys.com/en/CODESYS%20UML/_uml_sc_simple_machine.html)
- 🔗 [content.helpme-codesys.com, _ex_uml_sc_coffee_machine](https://content.helpme-codesys.com/en/CODESYS%20Examples/_ex_uml_sc_coffee_machine.html)
- 🔗 [www.infoplc.net, el-nuevo-uml-state-chart-en](https://www.infoplc.net/descargas/42-codesys/2080-lenguajes-de-programaci%C3%B3n-de-codesys-incluido-el-nuevo-uml-state-chart-en)
- 🔗 [CODESYS Feature Briefing - Fall 2023](https://www.youtube.com/watch?v=ND4TQQNxXQg)
***
### <span style="color:grey">Link al Video de Youtube_32:</span>
- 🔗 [032 - OOP IEC 61131-3 PLC -- UML - Diagrama de Estado - StateChart](https://youtu.be/Gq_wvuDBgZ4)