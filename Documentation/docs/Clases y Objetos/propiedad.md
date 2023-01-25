### propiedades

Properties are major variables of a class. They can be used as an alternative to regular class or 
function block I/O [14]. 
Properties have “Get” and “Set” methods that allow variables to be accessed and/or changed:
• Get - Method that returns the value of a variable;
• Set - Method that sets the value of a variable.
By deleting the “Get” or “Set” method, a programmer can make properties “write-only” or 
“read-only”, respectively.
Since these are methods, it means that properties can:
• Have their own internal variables;
• Perform operations before returning its value;
• The returned variable doesn’t need to be attached to a particular input or output (or 
internal variable) of the POU, it can return a value based on a certain combination of its 
variables;
• Be accessed upon event instead of being checked in every execution cycle.
