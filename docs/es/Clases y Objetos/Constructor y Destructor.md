### Métodos 'FB_Init', 'FB_Reinit' y 'FB_Exit'

### FB_Init:
- Dependiendo de la tarea, puede ser necesario que los bloques de funciones requieran parámetros que solo se usan una vez para las tareas de inicialización. Una forma posible de pasarlos elegantemente es usar el método FB_init().
Este método se ejecuta implícitamente una vez antes de que se inicie la tarea del PLC y se puede utilizar para realizar tareas de inicialización.
- También es posible sobrescribir FB_init(). En este caso, las mismas variables de entrada deben existir en el mismo orden y ser del mismo tipo de datos que en el FB básico. Sin embargo, se pueden agregar más variables de entrada para que el bloque de funciones derivado reciba parámetros adicionales.
- Al pasar los parámetros por FB_init(),no se pueden leer desde el exterior ni cambiar en tiempo de ejecución. La única excepción sería la llamada explícita de FB_init() desde la tarea del PLC. Sin embargo, esto debe evitarse principalmente, ya que todas las variables locales de la instancia se reinicializarán en este caso.
Sin embargo, si aún debe ser posible el acceso, se pueden crear las propiedades apropiadas para los parámetros.

### FB_Reinit:
Si es necesario, debe implementar FB_reinit explícitamente. Si este método está presente, se llama automáticamente después de que se haya copiado la instancia del bloque de función correspondiente (llamada implícita). Esto sucede durante un cambio en línea después de cambios en la declaración de bloque de función (cambio de firma) para reinicializar el nuevo bloque de instancia.
Este método se llama después de la operación de copia y debe establecer valores definidos para las variables de la instancia. Por ejemplo, puede inicializar variables en consecuencia en la nueva ubicación en la memoria o notificar a otras partes de la aplicación sobre la nueva ubicación de variables específicas en la memoria. Diseñe la implementación independientemente del cambio en línea. El método también se puede llamar desde la aplicación en cualquier momento para restablecer una instancia de bloque de funciones a su estado original.
### FB_Exit:
Si es necesario, debe implementar FB_exit explícitamente. Si este método está presente, se llama automáticamente (implícitamente) antes de que el controlador elimine el código de la instancia del bloque de funciones (por ejemplo, incluso si TwinCAT cambia del modo Ejecutar al modo de configuración).
***
![constructor_destuctor](../imagenes/constructor&destructor.png)
***
- 🔗 [Métodos FB_init, FB_reinit and FB_exit, Infosys Beckhoff](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/5044757003.html?id=6463352332511266504)

- 🔗 [Métodos 'FB_Init', 'FB_Reinit' y 'FB_Exit', Codesys](https://help.codesys.com/api-content/2/codesys/3.5.12.0/en/_cds_method_fb_init_fb_reinit/)

- 🔗 [iec-61131-3-parameter-transfer-via-fb_init, stefanhenneken.net](https://stefanhenneken.net/2019/07/26/iec-61131-3-parameter-transfer-via-fb_init/)