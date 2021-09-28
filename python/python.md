### Python Language Overview

### Mostly suited for
- systems programming
- web development (back-end)
- machine learning 
- application development

### Features Table

| Feature                      | Status        |
|------------------------------|---------------|
| Garbage Collection           | Supported     |
| Concurrency                  | Supported     |
| Generics                     | Supported     |
| Object-Orientation           | Supported     |
| Abstract Class               | Supported     |
| Abstract Method              | Supported     |
| Restriction on Class members | Supported     |
| Constructor-Destructor pair  | Supported     |
| First-Class Function         | Supported     |
| Closure                      | Supported     |
| Reference Semantics          | Supported     |
| Value Semantics              | Supported     |
| Type Composition             | Supported     |
| Tail-Call Optimization       | Not Supported |

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
	control ::= [control:exception] | [control:loop] | [control:conditional] | [control:raise]
		exception ::= try: 
			[stmt] 
		except:
			[stmt]
		-- finally: 
			[stmt] -- 

		loop ::= [loop:while] | [loop:for]
			loop:for ::= for [id] in [type:iterable]:
				[stmt]

			loop:while ::= while [expr:conditional]:
				[stmt]

		conditional ::= if [expr:conditional]:
			[stmt]
		-- elif [expr:conditional]:
			[stmt] --
		-- else: 
			[stmt] -- 

		raise ::= raise [type:exception]

	assignment ::= [id] [op:binary:assignment] [expr]
	function ::= def [id]([parameters]) -- -> [type] --:
		[stmt]
		-- return -- [stmt:function] | [expr] -- --

	class ::= class [id] -- ([type:superclass]) -- :
		[stmt]


parameters ::= id::parameter -- :[type] -- -- = [value:default] |, [parameter] --
superclass ::= id::superclass |, [superclass]


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

id ::= [[a-z,A-Z]]* [numbers]
numbers::= [[0-9]] | --_-- -$ . $- [numbers]

```
- Single line comment `# comment`.

---
### Fundamental Data Types
Defines the set of built-in data types in Python. 

Numeric Types
- Integer
- Float
- Complex Number

Boolean Types
- `True`
- `False`
- Truthy type - expressions that evaluates to true
- Falsy type - expressions that evaluates to false

Composite Types
- Sequence Types 
	- Tuple
	- List
	- String
- Dictionary
- Set
- Files
- Object

---
### Design Principles of Python ([Zen do Python](https://www.python.org/dev/peps/pep-0020/))
1. Beautiful is better than ugly.
2. Explicit is better than implicit.
3. Simple is better than complex.
4. Complex is better than complicated.
5. Flat is better than nested.
6. Sparse is better than dense.
7. Readability counts.
8. Special cases aren't special enough to break the rules.
9. Although practicality beats purity.
10. Errors should never pass silently.
11. Unless explicitly silenced.
12. In the face of ambiguity, refuse the temptation to guess.
13. There should be one-- and preferably only one --obvious way to do it.
14. Although that way may not be obvious at first unless you're Dutch.
15. Now is better than never.
16. Although never is often better than *right* now.
17. If the implementation is hard to explain, it's a bad idea.
18. If the implementation is easy to explain, it may be a good idea.
19. Namespaces are one honking great idea -- let's do more of those!

<br>

### Code Conventions
- `snake_case` for naming variables and methods 
- `PascalCase` for naming classes