## <span style="color:grey">Inheritance Interface:</span>

Like the functions blocks, the interfaces can be expanded.Next, the interface obtains the interface methods and the properties of the basic interface, in addition to its own.

Create an interface that expands another interface by extension:

```javascript
INTERFACE I_Sub1 EXTENDS I_Base1, I_Base2
```

- Multiple inheritance is allowed by interface extension:

```javascript
INTERFACE I_Sub2 EXTENDS I_Sub1
```

- Multiple inheritance for interfaces is allowed.It is possible that an interface expands to more than one interface.

***
### <span style="color:grey">Links:</span>

- 🔗 [infosys.beckhoff.com, Extends Interface](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2527343499.html?id=365591094627259992)

- 🔗 [help.codesys.com, Extends Interface](https://help.codesys.com/api-content/2/codesys/3.5.13.0/en/_cds_extending_interface/)

***
### <span style="color:grey">Link to the Youtube Video 008:</span>
- 🔗 [008 - OOP IEC 61131-3 PLC -- Herencia Estructura e Interface](https://youtu.be/G0suYh_bz0o)
