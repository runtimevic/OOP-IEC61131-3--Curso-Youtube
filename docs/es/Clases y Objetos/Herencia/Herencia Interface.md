## <span style="color:grey">Herencia Interface:</span>

Al igual que los bloques de funciones, las interfaces se pueden ampliar. A continuación, la interfaz obtiene los métodos de interfaz y las propiedades de la interfaz básica, además de los suyos propios.

Cree una interfaz que amplíe otra interfaz:

```javascript
INTERFACE I_Sub1 EXTENDS I_Base1, I_Base2
```


- Se permite la herencia múltiple.

```javascript
INTERFACE I_Sub2 EXTENDS I_Sub1
```

- Se permite la herencia múltiple para las interfaces. Es posible que una interfaz amplíe más que otra interface.

***
### <span style="color:grey">Links:</span>

- 🔗 [infosys.beckhoff.com, Extends Interface](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2527343499.html?id=365591094627259992)

- 🔗 [help.codesys.com, Extends Interface](https://help.codesys.com/api-content/2/codesys/3.5.13.0/en/_cds_extending_interface/)
