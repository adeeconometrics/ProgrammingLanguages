### Python Language Overview

- Interpreted.
- Supports Garbage Collection and Automatic Reference Counting.
- Supports Generic Programming. 
- Supports class-based Object-Orientation.
	- Supports RAII.
	- Supports multiple inheritance.
	- Supports abstract class, abstract methods.
	- Does support have private members.
- Supports first-class functions.
- Supports closure. 

### Syntactical features
- Supports operator overloading. 
- Supports type annotations.
- Supports type aliasing.

Official Documentation: https://docs.python.org/3/

---
### Python Grammar

```
class ::= class [name:claass] ([superclass]):
		[method] | [variable] | pass

method ::= def name:method ([parameter]) -- -> name:type -- :
		[stmt] | [variable] | [method] | pass

parameters ::= name:parameter -- :[name:type] -- -- = [value:default] -- |, [parameter]

superclass ::= name:superclass -- :[name:type] -- |, [superclass]

stmt ::= [expr] | [stmt]

expr ::= [binary] | [unary] | [expr] 

	binary ::= [expr] [op:binary] [expr]
	unary ::= [op:unary] [expr]

name ::= [[a-z,A-Z]]* [numbers]

numbers::= [[0-9]] | --_-- -$ . $- [numbers]

```