### <span style="color:grey">Constructor and Destructor:</span>
### <span style="color:grey">Methods 'FB_Init', 'FB_Reinit' y 'FB_Exit':</span>

### <span style="color:orange">FB_Init:</span>
- Depending on the task, it may be necessary that the functions blocks require parameters that are only used once for initialization tasks.A possible way to pass them elegantly is to use the method FB_init().
This method is implicitly executed once before the PLC task begins and can be used to perform initialization tasks.
- It is also possible to overwrite fb_init ().In this case, the same input variables must exist in the same order and be the same type of data as in the basic FB.However, more entry variables can be added so that the derived functions block receives additional parameters.
- When passing the parameters by FB_init (), they cannot be read from outside or change in execution time.The only exception would be the explicit call of FB_init () from the task of the PLC. However, this should be avoided mainly, since all local variables of the instance will be reset in this case.
However, if access must still be possible, appropriate properties for parameters can be created.

### <span style="color:orange">FB_Reinit:</span>
If necessary, you must implement FB_Reinit explicitly.If this method is present, it is automatically called after the corresponding function block has been copied (Implicit call). This happens during an online change after changes in the function block declaration (Change of signature) to reset the new instance block.
This method is called after the copy operation and must establish defined values for the variables of the instance.For example, you can initialize variables accordingly in the new location in memory or notify other parts of the application on the new location of specific memory variables.Design the implementation regardless of online change.The method can also be called from the application at any time to restore an instance of the functions block to its original state.
### <span style="color:orange">FB_Exit:</span>
If necessary, you must implement FB_EXIT explicitly.If this method is present, it is automatically called (implicitly) before the controller eliminates the instance code of the functions block (For example, even if Twincat changes the way to execute the configuration mode).
***
### <span style="color:grey">Links:</span>

![constructor_destuctor](../images/constructor&destructor.png)
***
- 🔗 [Methods FB_init, FB_reinit and FB_exit, Infosys Beckhoff](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/5044757003.html?id=6463352332511266504)

- 🔗 [Methods 'FB_Init', 'FB_Reinit' y 'FB_Exit', Codesys](https://help.codesys.com/api-content/2/codesys/3.5.12.0/en/_cds_method_fb_init_fb_reinit/)

- 🔗 [iec-61131-3-parameter-transfer-via-fb_init, stefanhenneken.net](https://stefanhenneken.net/2019/07/26/iec-61131-3-parameter-transfer-via-fb_init/)

***
### <span style="color:grey">Link to the Youtube Video 003:</span>
- 🔗 [003 - OOP IEC 61131-3 PLC -- Clase y Objeto](https://youtu.be/lchxx28wwXM)