# Time Tracker

## Things to remember
- use default value for properties if you want to reuse the classes. 'this.var : <_value>'. This makes it easy to modify the value of the properties if you want to reuse them.
- @required parameter checks if the parameter is passed or not, it DOES NOT checks if the value of that parameter is null or not. 
- For that, you need to use 'assert <_variable> != null'. Use assertions to catch errors early. But, they are a debug mode feature only. They get removed when app runs in release mode.

## New Widgets
- Opacity