### <span style="color:grey">Tipos de variables que se pueden declarar en un FUNCTION_BLOCK:</span> 

- 🔗 [Local Variables - VAR](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528755083.html)
- 🔗 [Input Variables - VAR_INPUT](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528760459.html)
- 🔗 [Output Variables - VAR_OUTPUT](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528765835.html)
- 🔗 [Input/Output Variables - VAR_IN_OUT, VAR_IN_OUT CONSTANT](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528771211.html)

- 🔗 [Temporary Variable - VAR_TEMP](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528781963.html)
- 🔗 [Static Variables - VAR_STAT](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528787339.html)
- 🔗 [External Variables - VAR_EXTERNAL](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528792715.html)

- 🔗 [Remanent Variables - PERSISTENT, RETAIN](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528803467.html)
- 🔗 [SUPER](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528837771.html)
- 🔗 [THIS](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528843147.html)
- 🔗 [Variable types - attribute keywords](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528848523.html)
    - 🔗 [RETAIN: for remanent variables of type RETAIN](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528803467.html)
    - 🔗 [PERSISTENT: for remanent variables of type PERSISTENT](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528803467.html)
    - 🔗 [CONSTANT: for constants](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2529284235.html#2529371275)

- Todos estos tipos de variables que se pueden declarar dentro del FB se pueden repetir los mismos tipos de variables dentro del FB,
esto podria valer para diferenciar variables del mismo tipo en la zona de declaración, sería meramente indicativo...

-Ejemplo de declaración de variables en un FUNCTION_BLOCK:
```javascript
FUNCTION_BLOCK fb_tipos_de_datos
VAR_INPUT
	binput : BOOL;
END_VAR
VAR_INPUT
	binput2 : BOOL;
END_VAR
VAR_OUTPUT
	output1 : REAL;
END_VAR
VAR_IN_OUT
	in_out1 : LINT;
END_VAR
VAR_IN_OUT CONSTANT
	in_out_constant1 : DINT;
END_VAR
VAR
	var1 : STRING;
END_VAR
VAR_TEMP
	temp1 : ULINT;
END_VAR
VAR_STAT
    nVarStat1 : INT;
END_VAR
VAR_EXTERNAL
    nVarExt1 : INT; // 1st external variable
END_VAR
VAR PERSISTENT
    nVarPers1 : DINT; (* 1. Persistent variable *)
    bVarPers2 : BOOL; (* 2. Persistent variable *)
END_VAR
VAR RETAIN
    nRem1 : INT;
END_VAR
VAR CONSTANT
	n : INT:= 10;
END_VAR
```
