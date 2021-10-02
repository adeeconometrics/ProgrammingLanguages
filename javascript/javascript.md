### JavaScript Language Overview

- Interpreted.
- Supports Garbage Collection.
- Supports Metaprogramming. 
- Supports prototype-based Object-Orientation.
- Supports first-class functions. 
- Supports closure. 


### Syntactical features:
- Does not support operator overloading. 
- Does not support type annotations.* 
- Does not support type aliasing.*

Documentation: https://developer.mozilla.org/en-US/docs/Web/JavaScript

Standard Language Specification: https://tc39.es/ecma262/

---
### JavaScript Grammar

```
class ::= class [id:class] | extends [id:superclass] {
		-- constructor([parameter]){ [stmt]; } --
		static | [ [variable] | [method] ] ;

		-- set [id:variable]() {return [id:variable]; } --
		-- get [id:variable]() {return [id:variable]; } -- 
	} 

method ::= function [id:method] ([parameter]){
		[stmt]; | [method] 
		-- return [value]; --
	}

parameter ::= id:parameter -- = [value:default] -- |, [parameter]

stmt ::= [expr] | [stmt]

expr ::= [binary] | [unary] | [expr]

variable ::= [ let | var | const ] id:varible

types ::= type::primitive | [types]

type::primitive ::= string | number | boolean | null | undefined 

id ::= [[A-z,a-z]]* -- [numbers] --

numbers ::= [[0-9]] | --$.$-- [numbers]
```

### Type System
- Primitive Types
	- string
	- number
	- boolean
	- null
	- undefined
- Composite
	- class
	
<!-- should types be defined in the grammar set? -->