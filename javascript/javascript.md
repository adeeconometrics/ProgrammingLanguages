### JavaScript Language Overview


---
### JavaScript Grammar

```
class ::= class [name::class] | extends [name::superclass] {
		-- constructor([parameters]){[initialization];} --
		static | [ [variable] | [method] ] ;

		-- get [name::variable]() {return name::variable; } -- 
		-- set [name::variable]() {return name::variable; } --
	} 

method ::= function [name::method] ([parameters]){
		[statement] | [method] ;
		-- return [value]; --
	}

parameters ::= name::parameter -- = [value::default] -- | [parameters]

statemens ::= [expression] | [statement]

expression ::= [binary] | [unary] | [expression]

variable ::= [ let | var | const ] name::varible

types ::= type::primitive | [types]

type::primitive ::= string | number | boolean | null | undefined 

name ::= {A-z,a-z}* [numbers]

numbers::= {0-9} | [numbers]
```