### Métodos 'FB_Init', 'FB_Reinit' y 'FB_Exit'

### FB_Init:
Dependiendo de la tarea, puede ser necesario que los bloques de funciones requieran parámetros que solo se usan una vez para las tareas de inicialización. Una forma posible de pasarlos elegantemente es usar el método FB_init().
Este método se ejecuta implícitamente una vez antes de que se inicie la tarea del PLC y se puede utilizar para realizar tareas de inicialización.
También es posible sobrescribir FB_init(). En este caso, las mismas variables de entrada deben existir en el mismo orden y ser del mismo tipo de datos que en el FB básico. Sin embargo, se pueden agregar más variables de entrada para que el bloque de funciones derivado reciba parámetros adicionales.
Al pasar los parámetros por FB_init() , no se pueden leer desde el exterior ni cambiar en tiempo de ejecución. La única excepción sería la llamada explícita de FB_init() desde la tarea del PLC. Sin embargo, esto debe evitarse principalmente, ya que todas las variables locales de la instancia se reinicializarán en este caso.
Sin embargo, si aún debe ser posible el acceso, se pueden crear las propiedades apropiadas para los parámetros.

***
- 🔗 [Métodos FB_init, FB_reinit and FB_exit, Infosys Beckhoff](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/5044757003.html?id=6463352332511266504)

- 🔗 [Métodos 'FB_Init', 'FB_Reinit' y 'FB_Exit', Codesys](https://help.codesys.com/api-content/2/codesys/3.5.12.0/en/_cds_method_fb_init_fb_reinit/)

- 🔗 [iec-61131-3-parameter-transfer-via-fb_init, stefanhenneken.net](https://stefanhenneken.net/2019/07/26/iec-61131-3-parameter-transfer-via-fb_init/)