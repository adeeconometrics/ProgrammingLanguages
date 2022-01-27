### C++ Overview 

[toc]

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



### Syntactical features

- operator overloading
- type annotation or type deduction
- type aliasing

Official documentation: https://en.cppreference.com/w/

----

### CFG grammar

```
program ::= [directives] [stmt]; | [directives] [expr];

stmt ::= [stmt:class] | [stmt:generic] | [stmt:control] | [stmt:exception] |
		[stmt:function] | [stmt:assignment] |  [expr] | [stmt]
	
    class ::= class [id::class] : [class:superclass] {
		[class:class_contents]
	};
		superclass ::= [accessor] [id::superclass] --, [superclass] --

		class_contents ::= [accessor]:
				-- [class:method] --
				-- [class:field] -- | [class_contents] | [stmt:class]

			method ::= -- virtual -- [accessor] [type] [id::method] ([parameter]) [method:modifier] {
				[stmt];
				-- return [expr] | [function] --
			} | [method]

				modifier ::= noexcept | const | volatile | && | nothrow | final
		
			field ::= [accessor] [type] [id] -- = [value::default]; -- | [field]
		
		accessor ::= public | private | protected 

	generic ::= [generic:function] | [generic:class]
		function ::= template <typename [template_parameter]> [type] [id::function] ([parameters]) [function:modifier] {
			[stmt]
			-- return [expr] -- 
		}
			modifier ::= noexcept | nothrow | final | &&

		class ::= template <typename [template_parameter]> [stmt:class]

	control ::= [control:conditional] | [control:loop] 
		conditional ::= [conditional:if] | [conditional:switch]

			if ::= if([expr:conditional]){[stmt] }
				-- [if:elseif] -- 
				-- else {[stmt] } -- 

				elseif ::= else if ([expr:conditional]) {[stmt] } | [elseif]

			switch ::= switch([id]){[switc:case_stmt] }
				case_stmt ::= case [expr]:
						[stmt]
						break; | [case_stmt] | default: [stmt]
		
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

- Multiline comments `/* [ comment ...] */`. 
- Single line comment `// comment`.

**Note**: The CFG does not fully encapsulate all valid syntactical constructions in C++.

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
            
            - casting operator
            
              

### Code Conventions
- `snake_case` for naming variables and methods 
- `PascalCase` for naming classes