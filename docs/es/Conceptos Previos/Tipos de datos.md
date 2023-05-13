## Declaracion de una Variable:

La declaración de variables en CODESYS ó TwinCAT incluirá:

- Un nombre de variable
- Dos puntos
- Un tipo de dato
- Un valor inicial opcional
- Un punto y coma
- Un comentario opcional

```iecst
VAR
	Marca : STRING;
	Color : INT; // Numero de color.
	accion : BOOL;
END_VAR
```
***
### <span style="color:grey">🔗 [Tipos de Datos:](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2529388939.html?id=3451082169760117126)</span>

### Las ventajas de las estructuras de datos.
- La principal aportación de las estructuras de datos y los tipos de datos 
creados por el usuario es la claridad y el orden del código resultante.

***

###  Estructuras de datos: (STRUCT)

- 🔗 [19. TwinCAT 3: Structures](https://www.youtube.com/watch?v=KzZ73qAevlU)
- 🔗 [Extender una Estructura, Infosys Beckhoff](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/3468091787.html?id=592001323464924565)

###  Datos de usuario:UDT (User Data Type):
Los UDT (User Data Type) son tipos de datos que el usuario crea a su medida, 
según las necesidades de cada proyecto.

***
When programming in TwinCAT, you can use different data types or instances of function blocks. You assign a data type to each identifier. The data type determines how much memory space is allocated and how these values are interpreted.

The following groups of data types are available:

### Standard data types
TwinCAT supports all data types described in the IEC 61131-3 standard.

- BOOL
- Integer Data Types
- REAL / LREAL
- STRING
- WSTRING
- Time, date and time data types
- LTIME
### Extensions of the IEC 61131-3 standard
- BIT
- ANY and ANY_<type>
- Special data types XINT, UXINT, XWORD and PVOID
- REFERENCE
- UNION
- POINTER
- Data type __SYSTEM.ExceptionCode
### User-defined data types
	
Note the recommendations for naming objects.

- POINTER
- REFERENCE
- ARRAY
- Subrange Types
User-defined data types that you create as DUT object in the TwinCAT PLC project tree:

- Structure
- Enumerations
- Alias
- UNION

### Further Information
- BOOL
- Integer Data Types
- Subrange Types
- BIT
- REAL / LREAL
- STRING
- WSTRING
- Time, date and time data types
- ANY and ANY_<type>
- Special data types XINT, UXINT, XWORD and PVOID
- POINTER
- Data type __SYSTEM.ExceptionCode
- Interface pointer / INTERFACE
- REFERENCE
https://infosys.beckhoff.com/english.php?content=../content/1033/tc3_plc_intro/2529458827.html&id=
- ARRAY
- Structure
- Enumerations
- Alias
- UNION

***
### <span style="color:grey">Links Tipos de Datos:</span>
- 🔗 [12. TwinCAT 3: Standard data types](https://www.youtube.com/watch?v=qh2cC6eOhKw)

- 🔗 [help.codesys.com, Tipos de datos](https://help.codesys.com/api-content/2/codesys/3.5.14.0/en/_cds_struct_reference_datatypes/#c2bdb4ccec0a8640e0157fbed-id-b8c8a0ca2bdb4ccdc0a8640e00e8ce32)

- 🔗 [www.infoplc.net, codesys-variables](https://www.infoplc.net/descargas/42-codesys/3418-codesys-variables-globales-persistentes)

- 🔗 [TC10.Beckhoff TwinCAT3 DUT構造体.JP](https://www.youtube.com/watch?v=UBmHhbZf12s)
