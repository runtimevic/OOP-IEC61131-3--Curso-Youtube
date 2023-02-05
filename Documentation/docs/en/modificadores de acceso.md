

***
### modificadores de acceso: 
- <span style="color:orange">public:</span> son accesibles luego de instanciar la clase.
- <span style="color:orange">private:</span> son accesibles dentro de la clase.
- <span style="color:orange">protected:</span> son accesibles a través de la herencia.
- <span style="color:orange">internal:</span>
***

- PUBLIC: Corresponds to the specification of no access modifier
- PRIVATE: Access to the method is restricted to the function block or the program respectively.
- PROTECTED: Access to the method is restricted to the program or the function block and its derivatives respectively.
- INTERNAL: Access to the method is limited to the namespace (the library).
In addition to these access modifiers, you can manually add the FINAL modifier to a method:

- FINAL: Overwriting the method in a derivative of the function block is not allowed. This means that the method may not be overwritten/extended in a possibly existing subclass.