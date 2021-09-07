### Python Language Overview


---
### Python Grammar

```
class ::= class ([class::superclass, ...]):
		[method] | [variable] | pass

method ::= def name::method ([parameter]) -- -> name::type -- :
		[statement] | [variable] | [method] | pass

parameters ::= name::parameter -- :[name::type] -- -- = [value::default] -- | [parameters]

statement ::= [expression] | [statement]

expression ::= [binary] | [unary] | [expression] 

binary ::= [expression] [operator::binary] [expression]

unary ::= [operator::unary] [expression]

name ::= {A-z,a-z}* [numbers]

numbers::= {0-9} | [numbers]

keyword ::= if | else   | elif  | while    | for | in     | class | def    | and     | or   | is | lambda
            as | assert | break | continue | del | except | not   | False  | finally | from 
 	    global | import | None  | nonlocal | not | pass   | raise | return | True    | with | yield 

```