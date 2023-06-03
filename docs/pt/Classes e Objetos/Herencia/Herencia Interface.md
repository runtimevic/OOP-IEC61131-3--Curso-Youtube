## <span style="color:grey">Herencia Interface:</span>

Al igual que los bloques de funciones, las interfaces se pueden ampliar. A continuación, la interface obtiene los métodos de interface y las propiedades de la interface básica, además de los suyos propios.

Cree una interface que amplíe otra interface mediante la extensión:

```javascript
INTERFACE I_Sub1 EXTENDS I_Base1, I_Base2
```

- Se permite la herencia múltiple mediante la extensión de interfaces:

```javascript
INTERFACE I_Sub2 EXTENDS I_Sub1
```

- Se permite la herencia múltiple para las interfaces. Es posible que una interfaz amplíe a más de una interface.

***
### <span style="color:grey">Links:</span>

- 🔗 [infosys.beckhoff.com, Extends Interface](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2527343499.html?id=365591094627259992)

- 🔗 [help.codesys.com, Extends Interface](https://help.codesys.com/api-content/2/codesys/3.5.13.0/en/_cds_extending_interface/)

***
### <span style="color:grey">Link al Video de Youtube 008:</span>
- 🔗 [008 - OOP IEC 61131-3 PLC -- Herencia Estructura e Interface](https://youtu.be/G0suYh_bz0o)
