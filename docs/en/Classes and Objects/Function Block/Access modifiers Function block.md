### <span style="color:grey">Access modifiers Function block:</span> 
We can have 2 access modifiers for the functions block:

- <span style="color:orange">PUBLIC:</span> 
    - There are no restrictions, it can be called from anywhere. 
    - If we do not put anything when declaring the FB is the same as public.
    - Anyone can call or create an instance of the FB.
    - It can be used for inheritance to being public. 
    - They are accessible after instantaging the class.
    - It corresponds to the modifier specification without access restriction.
- <span style="color:orange">INTERNAL:</span> 
    - You can only access the FB from the same name space. 
    - This allows the FB to be available only within a certain library.
The default configuration where no access specifier is defined is public.
    - Access is limited to name space (library).
***
We can have another 2 access modifiers for the functions block:

- <span style="color:orange">FINAL:</span>
    - (On Twincat 3 it does not go by default to select it when creating an FB, but it can be added later after creating it...) 
    - The FB cannot serve as a main block of functions. 
    - The methods and properties of this Pou cannot be inherited. 
    - Final is only allowed for pou of the type function_block.
    - It is not allowed to overwrite, in a derivative of the functions block. 
    - This means that it cannot be overwritten/extend in a possibly existing subclass.    
- <span style="color:orange">ABSTRACT:</span>

Blocks of abstract functions
```javascript
FUNCTION_BLOCK PUBLIC ABSTRACT FB_Foo
```
    - As soon as a method or property is declared as abstract, the functions block must also be declared as abstract.
    - Instances cannot be created from abstract FB.Abstract FBs can only be used as basic FBs when inherited.
    - All abstract methods and all abstract properties must be overwritten to create a non -abstract FB.An abstract method or an abstract property becomes a non -abstract method or a non -abstract property when overwritten.
    - Abstract functions blocks can also contain non -abstract methods and/or non -abstract properties.
    - If all abstract methods or all abstract properties during inheritance are not overwritten, the FB inherited can only be an abstract FB (Step by step).
    - Pointers or references of abstract FB type are allowed.However, these can refer to non -abstract FB and, therefore, call their methods or properties (polymorphism).

***
### <span style="color:grey">Link to the Youtube Video 004:</span>
- 🔗 [004 - OOP IEC 61131-3 PLC -- Class and object](https://youtu.be/jGtGV9icvO0)     
