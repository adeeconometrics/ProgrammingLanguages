### JavaScript Language Overview


---
### JavaScript Grammar

```
class ::= class [name:class] | extends [name:superclass] {
		-- constructor([parameter]){ [stmt]; } --
		static | [ [variable] | [method] ] ;

		-- get [name:variable]() {return name:variable; } -- 
		-- set [name:variable]() {return name:variable; } --
	} 

method ::= function [name:method] ([parameter]){
		[stmt]; | [method] 
		-- return [value]; --
	}

parameter ::= name:parameter -- = [value:default] -- |, [parameter]

stmt ::= [expr] | [stmt]

expr ::= [binary] | [unary] | [expr]

variable ::= [ let | var | const ] name:varible

types ::= type::primitive | [types]

type::primitive ::= string | number | boolean | null | undefined 

name ::= [[A-z,a-z]]* -- [numbers] --

numbers ::= [[0-9]] | --$.$-- [numbers]
```

<!-- should types be defined in the grammar set? -->