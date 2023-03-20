## <span style="color:grey">Herencia Estructura:</span>

Al igual que los bloques de funciones, las estructuras se pueden ampliar. La estructura obtiene entonces las variables de la estructura básica además de sus propias variables.

Crear una estructura que extienda otra estructura:

```javascript
TYPE ST_Sub EXTENDS ST_Base1, ST_Base2 :
STRUCT
```
- No se permite la herencia múltiple.

- La herencia múltiple no está permitida para las estructuras. No es posible que una estructura se extienda más que otra estructura.
***
### <span style="color:grey">Links:</span>

- 🔗 [infosys.beckhoff.com, Extends Structure](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/3468091787.html?id=592001323464924565)
