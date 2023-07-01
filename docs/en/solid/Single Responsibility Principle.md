### <span style="color:grey"> Single responsibility principle -- SRP :</span>

The unique responsibility principle establishes that a class must have a single responsibility in a program.

### <span style="color:grey"> Example :</span>
For example, instead of having a "employee" class that manages both personal information and the time registration, two separate classes must be created: "employee" for personal information and "registry" for the time record.In this way, each class focuses on a single task and is easier to maintain and modify.

Instead of having a class that manages everything, we create two separate classes:

```javascript
FUNCTION_BLOCK Employee
VAR_INPUT
    name : STRING;
    lastname : STRING;
    email : STRING;
END_VAR

// constructor
Employee(name, lastname, email);

// Getters and Setters
name();
lastname();
email();

END_FUNCTION_BLOCK
```

```javascript
FUNCTION_BLOCK REGISTRATION
VAR_INPUT
    employee : Employee; // instance of the function used
    startTime : DATE_AND_TIME;
    stopTime : DATE_AND_TIME;
END_VAR

// constructor
REGISTRATION(employee, startTime, stopTime);

// getters and setters
employee();
startTime();
stopTime();

END_FUNCTION_BLOCK
```

In this way, the "employee" class only handles the personal information of the employee and the "Registry" class only handles the registration of time.Each class has only one responsibility and is easier to maintain and modify in the future.

***
### <span style="color:grey">Links:</span>
- 🔗 [stefanhenneken.net,iec-61131-3-solid-the-single-responsibility-principle](https://stefanhenneken.net/2022/03/10/iec-61131-3-solid-the-single-responsibility-principle/)