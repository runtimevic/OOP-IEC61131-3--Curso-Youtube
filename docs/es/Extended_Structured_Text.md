### <span style="color:grey">ExST - Texto Estructurado Extendido:</span>
- El Texto Estructurado Extendido (ExST) es una extensión específica de CODESYS, que la empresa 3S ha implementado en CODESYS. 
- Además del lenguaje básico de  IEC 61131-3, se han agregado algunos elementos de control interesantes, tan útiles para el uso diario que me gustaría presentárselos directamente.
- También tenemos ExST disponible para TwinCAT3.
***
### <span style="color:grey">Asignación Extendida como Expresión:</span>
- En ExST, como extensión del estándar IEC 61131-3, CODESYS, TwinCAT permite el uso de asignaciones como expresiones.

Ejemplo:
```javascript	
myVar := myVar1 := myVar2 + 26 ; // asignación extendida 
```

- En este ejemplo, las variables myVar y myVar1 reciben el valor de la variable myVar2 sumado a 26.

Tabla de Ejemplos:

| **Ejemplo**  | **Comentario**  |
|:------------- |:----------------|
| int_var1 := int_var2 := int_var3 + 9;         | (* int_var1 y int_var2 recibe el valor de int_var3 + 9 *) |
| real_var1 := real_var2 := int_var;       | (* real_var1 y real_var2 recibe el valor de int_var *) |
| int_var := real_var1 := int_var;          | (* asignación incorrecta, ¡los tipos de datos no corresponden! *) |
| IF b := (i = 1) THEN i := i + 1; END_IF     | | 


- Hasta ahora, la asignación siempre se ha hecho con "**:=**" El valor del lado derecho se asigna a la variable del lado izquierdo.
***
### <span style="color:grey">S=</span>
- Sin embargo, también puede realizar la asignación utilizando "**S=**".
- Este operador establece una variable.
- Cuando el valor de la variable a la izquierda de "**S=**" se convierte en TRUE una vez, sigue siendo TRUE, incluso si el operando a la derecha de "**S=**" vuelve a FALSE.

Sintaxis:
```javascript
<variable1> S= <variable2>;
```
Ejemplo:
```javascript	
bVar1 S= bVar2;
```

- bVar1 obtiene el valor de bVar2. Una vez que bVar1 se ha establecido en TRUE, bVar1 permanece TRUE aunque vuelva bVar2 a ser FALSE.
***
### <span style="color:grey">R=</span>
- El operador de asignación "**R=**" es el opuesto de "**S=**".
- Esta asignación restablece una variable. 
- Una vez que el valor de la variable a la izquierda de "**R=**" se ha convertido en FALSE, permanece FALSE incluso si el operando a la derecha de "**R=**" vuelve a cambiar a TRUE .

Sintaxis:
```javascript
<variable1> R= <variable2>;
```
Ejemplo:
```javascript
bVar11 R= bVar22;
```

- bVar11 obtiene el valor de bVar22. Una vez que bVar11 se ha establecido en FALSE, bVar11 permanece FALSE aunque vuelva bVar22 a ser TRUE.

El uso de "**S=**" y "**R=**" en una concatenación es interesante. Si aplica el operador Set a una variable y el operador Reset a otra en una línea, la referencia siempre es al último elemento de la serie de asignación.

Ejemplo:
```javascript
bVar1 S= bVar2 R= F_Fun1(nPar1, nPar2);
```

- Todas las asignaciones de configuración y restablecimiento siempre hacen referencia al último elemento de la asignación.
Ejemplo: En este caso, bVar2 obtiene la salida de F_Fun1 resultante del reinicio, pero:
bVar1 no obtiene el resultado del conjunto de bVar2, sino el resultado del conjunto de F_Fun1!

```javascript	
bMyVar1 S= bMyVar2 R= myTimer.Q;
```

- Aquí bMyVar2 se restablece cuando el tiempo establecido en el módulo temporizador ha expirado.

- **¡¡Atención!!** La variable bMyVar1 ahora no se establece si bMyVar2 tiene el valor TRUE, pero los operadores de asignación siempre actúan en el bloque del temporizador.
***
### <span style="color:grey">Links ExST:</span>

- 🔗 [Threes Soup01, Beckhoff.Tutorial About TwinCAT3 ExST](https://www.youtube.com/watch?v=TomuktM5f8A)
- 🔗 [Threes Soup01, Beckhoff.TwinCAT ExST 使ってみよう](https://www.youtube.com/watch?v=JTmzfCI9Sk8&t=14s)
- 🔗 [Structured Text and Extended Structured Text (ExST), infosys.beckhoff.com](https://infosys.beckhoff.com/content/1033/tc3_plc_intro/2528221835.html?id=6103164662326938961)
- 🔗 [infosys.beckhoff.com, ExST](https://infosys.beckhoff.com/english.php?content=../content/1033/tc3_plc_intro/2528243339.html&id=)
- 🔗 [help.codesys.com, ExST](https://help.codesys.com/api-content/2/codesys/3.5.13.0/en/_cds_f_programming_language_st/)
- 🔗 [www.codesys-blog.com, ExST](https://www.codesys-blog.com/programmiersprachen/exst-erweiterter-strukturierter-text/)
- 🔗 [Texto estructurado (ST), Texto estructurado extendido (ExST)](https://content.helpme-codesys.com/en/CODESYS%20Development%20System/_cds_f_programming_language_st.html)
***
## <span style="color:grey">Links Video de Youtube 019 :</span>
- 🔗 [019 - OOP IEC 61131-3 PLC -- ExST Texto Estructurado Extendido](https://youtu.be/W-eTB0hzIZQ)