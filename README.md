# Time Tracker

## Things to remember

### 01 General
- always do null checks after async methods
- Dispose animations after applying them
- jsonDecode in dart:convert package
- Null aware operator - ??

### 02 Layout
- use default value for properties if you want to reuse the classes. 'this.var : <_value>'. This makes it easy to modify the value of the properties if you want to reuse them.
- @required parameter checks if the parameter is passed or not, it DOES NOT checks if the value of that parameter is null or not. 
- For that, you need to use 'assert <_variable> != null'. Use assertions to catch errors early. But, they are a debug mode feature only. They get removed when app runs in release mode.

### 03 Firebase
- Always use the return type as 'Future<>' for async methods and always inside a try catch block
- await suspends the execution until future returns a value
- Singleton design method permits no more than one instance of a class 

### 04 Authentication
- 'widget.name.function()' is just like 'this.name', it is used to access the variable of the same super class.

## New Widgets
- Opacity
- Equatable (Compares objects)
- Curved Animation (cool af)
- AnimationStatus
- ColorTween