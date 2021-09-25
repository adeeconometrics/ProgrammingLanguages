### Overview 

The repository focuses on C++ features. 

### Mostly suited for
- systems programming
- network programming
- game development
- machine learning 
- application development
- concurrent programming

### Features Table
| Feature                      | Status        |
|------------------------------|---------------|
| Garbage Collection           | Not Supported |
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
| Tail-Call Optimization       | Supported     |
### Operators
- operator precedence  

### CFG grammar

```
program ::= [directives] [stmt]; | [directives] [expr];

stmt ::= [stmt:class] | [stmt:generic] | [stmt:control] | [stmt:exception] | [stmt:function] | [stmt:assignment] |  [expr] | [stmt]
	
    class ::= class [id::class] : [class:superclass] {
		[class_contents]
	};
		superclass ::= [accessor] [id::superclass] |, [superclass]

		class_contents ::= [accessor]:
				-- [class:method] --
				-- [class:field] -- | [class_contents]

			method ::= -- virtual -- [accessor] [type] [id::method] ([parameter]) [method:modifier] {
				[stmt];
				-- return [expr] | [function] --
			} | [method]

				modifier ::= noexcept | const | volatile | && | nothrow | final
		
			field ::= [accessor] [id] -- ::type -- -- = [value::default]; -- | [id]

	generic ::= [generic:function] | [generic:class]
		function ::= template <typename [template_parameter]> [type] [id::function] ([parameters]) {
			[stmt]
			-- return [expr] -- 
		}

		class ::= template <typename [template_parameter]> [stmt:class]

	control ::= [control:conditional] | [control:loop] 
		conditional ::= [conditional:if] | [conditional:switch]
	
			::| else-if stmt must come after if, there may also be a list of else-ifs.
			if ::= if([expr:conditional]){[stmt] }
				-- else if ([expr:conditional]) {[stmt] } -- 
				-- else {[stmt] } -- 
			switch ::= switch(id){[switc:case_stmt] }
				case_stmt ::= case [expr]:
						[stmt]
						break; | [case_stmt]
		
		loop ::= [loop:for] | [loop:while] | [loop:do_while]
			for ::= for([id::initial::value]; [expr:conditional]; [id::increment]){[stmt]; }
			while ::= while([expr]) {[stmt]; }
			do_while ::= do {[stmt]} while([expr]);

		funciton ::= type [id::function] ([parameters]) {
			[stmt]
			-- return [expr] -- 
		}

    exception ::= try {[stmt] } [exception:catch_stmt]
        catch_stmt ::= catch ([type:exception]) {[stmt]} | [catch_stmt]

	assingment ::= [id] [op:binary:assingment] [expr]

template_parameter ::= [id:template] -- , typename [template_parameter] -- 

parameter ::= [type] [id::parameter] -- = [value] -- --, [parameter] -- 

expr ::= [expr:logical] | [expr:arithmetic] | [expr:comparison] | [expr:assignment] | [expr]
	logical ::= [expr:logical] [op:binary:logical] [expr:logical] | [op:unary:logical] [expr:logical]
    arithmetic ::= [literal:number] [op:binary:arithmetic] [literal:number] 
    comparison ::= [expr:comparison] [op:binary:comparison] [expr:comparison]
    assignment ::= [variable] [op:binary:assignment] [expr]


op ::= [op:unary] | [op:binary] | [op:increment]
	unary ::= [unary:logical] | [unary:index]
		index ::= ~ [] ~
      	logical ::= !
        misc ::= ++ | -- 

	binary ::= [binary:logical] | [binary:arithmetic] | [binary:comparison] | [binary:assignment]
        logical ::= && | ||
        arithmetic ::=  + | - | * | / | % 
		bitwise ::= >> | << | ^ | & | |
        comparison ::= > | < | >= | <= | == | != 
	    assignment ::= = | += | -= | *= | /= | %= | >>= | <<= | ^= | &= | |=

id ::= [[a-z,A-Z]]* [numbers]
numbers::= [[0-9]] | -$ . $- [numbers]
```

**Notes**: The CFG does not fully encapsulate all valid syntactical constructions in C++.

----


### Type system
- reference types
    - class types
    - pointer types 
    - reference type
        - lvalue reference
        - rvalue reference 

- value types
    - integral types
    - float type
    - boolean type
    - void type
    - char type
    - array type

- type conversion
    - implicit -- compiler-generated type conversions
    - explicit -- user-defined type conversions
        - C-style
            - C-cast: `([type])[id]`
        - C++-style
            - reinterpret cast: `reinterpret_cast<[type]>([expr])`
            - dynamic cast: `dynamic_cast<[type]>([expr])`
            - static cast: `static_cast<[type]>([expr])`
            - const cast: `const_cast<[type]>([expr])`
            - converting constructor
            - casting opertor

### Syntactical features
- operator overloading
- type annotation or type deduction
- type aliasing

Official documentation: https://en.cppreference.com/w/