## Kotlin Language Overview

[toc]

## Mostly Suited For

- Mobile development 



## Features Table

| Feature                      | Status        |
| ---------------------------- | ------------- |
| Garbage Collection           | Supported     |
| Concurrency                  | Supported     |
| Generics                     | Supported     |
| Object-Orientation           | Supported     |
| Abstract Class               | Supported     |
| Abstract Method              | Supported     |
| Restriction on Class members | Supported     |
| Constructor-Destructor pair  | Not Supported |
| First-Class Function         | Supported     |
| Closure                      | Supported     |
| Reference Semantics          | Supported     |
| Value Semantics              | Supported     |
| Type Composition             | Supported     |
| Tail-Call Optimization       | Supported     |



## Syntactical Features

- Type Aliasing 

- Type Annotation 

- Operator Overloading

  

Official Documentation: https://kotlinlang.org/docs/home.html



----

## Kotlin Grammar

```
program ::= [preamble] [stmt]

preamble ::= [decl:package] -- [decl:import] --

stmt ::= [expr] | [stmt:control] | 
		[stmt:assignment] | [stmt:function] | 
		[stmt:class] | [stmt]
		
		control ::= [control:exception] | [control:loop] | 
					[control:conditional] | [control:throw]
			
			exception ::= try {[stmt]}
						  [exception:catch]
				catch ::= catch ([id]: [Exception::type]) {} -- [catch] -- |
						  finally {[stmt]}

			loop ::= [loop:for] | [loop:while]
				for ::= for ([id::item] in [id::Iterator:type]) {[stmt]} | 
						for ([id::item] in [expr::range]) {[stmt]} |
						
				while ::= while ([expr::boolean]) {[stmt]} |
						 while([expr:boolean]) {[stmt]} do {[stmt]}
			
			conditional ::= [conditional:if] | [conditional:when]
				if ::= if (expr::boolean) {[stmt]} else {[stmt]} |
					  if (expr::boolean) {[stmt]} [if:elseif] 
						
					elseif ::= else if ([expr::boolean]) {[stmt]} -- [elseif] -- |
								else {[stmt]}
				
				when ::= when([expr]) {
					[when:case] -> [stmt]
					-- else -> [expr] --
				}
					case ::= [expr::boolean] -> [stmt] -- [case] --
			
			assignment ::= ---
			
			function ::= fun [id::function]([function:param]):[return_type:type]{[stmt]}
				param ::= [id::parameter]:[type] --, [param] -- |
						  [id::parameter]:[type] = [default_value] --, [param] -- 
			
			class ::= class [id::class] -- [class:constructor] --: 
										-- [base:type] | [interfaces:type] -- {
						-- [class:attr] --
                        -- [class:methods] --
					}
					
				attr ::= [class:accessor] [id] --, [attr] -- |
						[class:accessor] [id] = [default_value] --, [attr] --
						
				methods ::= [class:accessor] [stmt:function] | 
							override [class:accessor] [stmt:function] |
							[methods]
							
				accessor ::= public | private | protected

expr ::= [expr:logical] | [expr:arithmetic] | 
		 [expr:comparison] | [expr:assignment] | [expr]
		 
	logical ::= [expr:logical] [op:binary:logical] [expr:logical] |
    			[op:unary:logical] [expr:logical]
    			
    arithmetic ::= [literal:number] [op:binary:arithmetic] [literal:number] 
    comparison ::= [expr:comparison] [op:binary:comparison] [expr:comparison]
    assignment ::= [variable] [op:binary:assignment] [expr]


op ::= [op:unary] | [op:binary]
	unary ::= [unary:misc] | [unary:logical]
        logical ::= !
        misc ::= ++ | -- | ?

	binary ::= [binary:logical] | [binary:arithmetic] | 
				[binary:comparison] | [binary:assignment]
				
        logical ::= && | || | !
        arithmetic ::=  + | - | * | / | // | % | ** 
		bitwise ::= >> | << | ^ | & | |
        comparison ::= > | < | >= | <= | == | != 
        assignment ::= = | += | -= | *= | /= | //= | %= | **= | >>= | <<= | ^= | &= | |=

id ::= [[a-z,A-Z]]* [numbers]
numbers::= [[0-9]] | -$ . $- [numbers]
```



## Code Conventions

Naming

- `org.example.packageName` is in Camel Case.

- `functionNames` are in Camel Case. 
- `ClassNames`, `Interfaces`, and `AbstractClasses` are in Pascal Case.
- `CONSTANT_VALUES` are in uppercase snake case.
- `_privateProperties` in a class should start with an underscore.





References:

1. Kotlin v1.6.10 (n.d.). Coding Conventions. https://kotlinlang.org/docs/coding-conventions.html.
2. Kotlin v1.6.10 (n.d.). Conditions and Loops. https://kotlinlang.org/docs/control-flow.html.
3. Kotlin v1.6.10 (n.d.). Classes. https://kotlinlang.org/docs/classes.html.
4. Kotlin v1.6.10 (n.d.). Functions. https://kotlinlang.org/docs/functions.html.

