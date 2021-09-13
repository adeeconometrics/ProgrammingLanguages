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

program ::= [preamble] [stmt]

stmt ::= [expr] | [stmt:control] | [stmt:assignment] | [stmt:function] | [stmt:class] |[stmt]
	stmt:control ::= [control:exception] | [control:loop] | [control:conditional] | [control:raise]
		control:exception ::= try: 
								[stmt] 
							   except:
							   	[stmt]
							   -- finally: --
							   -- [stmt] -- 

		control:loop ::= [loop:while] | [loop:for]
			loop:for ::= for [identifier] in [type:iterable]:
							[stmt]

			loop:while ::= while [expr:conditional]:
							[stmt]

		control:conditional ::= if [expr:conditional]:
									[stmt]
								-- elsif [expr:conditional]: --
									-- [stmt] --
								-- else:
									-- [stmt] -- 

		control:raise ::= raise [type:exception]

	stmt:assignment ::= [identifier] [op:binary:assignment] [expr]
	stmt:function ::= def [identifier]([parameters]) -- -> [type] --:
						[stmt]
						-- return -- [stmt:function] | [expr] -- --

	stmt:class ::= class [litera:string::identifier] -- ([type:superclass]) -- :
					[stmt]

parameters ::= identifier:parameter -- :[type] -- -- = [value:default] -- |, [parameter]

superclass ::= identifier:superclass |, [superclass]


expr ::= [expr:logical] | [expr:arithmetic] | [expr:comparison] | [expr:assignment] | [expr]
	logical ::= [expr:logical] [op:binary:logical] [expr:logical] | [op:unary:logical] [expr:logical]
    arithmetic ::= [literal:number] [op:binary:arithmetic] [literal:number] 
    comparison ::= [expr:comparison] [op:binary:comparison] [expr:comparison]
    assignment ::= [variable] [op:binary:assignment] [expr]


op ::= [op:unary] | [op:binary]
	unary ::= [unary:misc] | [unary:logical]
        logical ::= not | !
        misc ::= @

	binary ::= [binary:logical] | [binary:arithmetic] | [binary:comparison] | [binary:assignment]
        logical ::= and | or | not
        arithmetic ::=  + | - | * | / | // | % | ** 
		bitwise ::= >> | << | ^ | & | |
        comparison ::= > | < | >= | <= | == | != | is | is not | 
        assignment ::= = | += | -= | *= | /= | //= | %= | **= | >>= | <<= | ^= | &= | |=

identifier ::= [[a-z,A-Z]]* [numbers]
numbers::= [[0-9]] | --_-- -$ . $- [numbers]

```