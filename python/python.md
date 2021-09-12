### Python Language Overview


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