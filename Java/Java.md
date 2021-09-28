### Mostly suited for
- web development
- network programming
- application development
- concurrent programming

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
| Constructor-Destructor pair  | Not Supported |
| First-Class Function         | Supported     |
| Closure                      |               |
| Reference Semantics          | Supported     |
| Value Semantics              | Supported     |
| Type Composition             | Supported     |
| Tail-Call Optimization       | Not Supported |
### Operators
- operator precedence  

### CFG grammar

```
program ::= -- [preamble] -- [stmt];

preamble ::= package [id] | import [id]

stmt ::= [stmt:class] | [stmt:interface] | [stmt:generic] | [stmt:control] | [stmt:exception] | [stmt:assignment] | [expr] | [stmt]

    class ::= -- abstract | static -- class [id::class] -- extend [id::superclass] | implements [class:interface_list] -- {
        -- [class:contents] -- 
    } 
        contents ::=  [contents:method_modifier] [contents:method] |
                [contents:field_modifier] [contents:field] |
                [stmt:class] 

            method_modifier ::= [accessor] | final | static | [accesor] final | [accessor] abstract | [accessor] static 
            field_modifier ::= [accessor] | final | [accessor] final | [accessor] static
            method ::= [accessor] [type] [id::method] ([parameters]){
                [stmt]
                -- return [expr] -- 
            }
            
            field ::= [type] [id::field] -- = [value] -- | [field]

        interface_list ::= [id::interface] --, [interface_list] --
    
    interface ::= interface [id::interface] -- implements [stmt:class:interface_list] -- {
        -- [interface:field] -- 
        -- [interface:method] -- 
    } 
        method ::= [method:default] | [method:abstract]
            default ::= [stmt:class:method]
            abstract ::= [accessor] [type] [id::method]([parameters]); | [abstract]

        field :: [stmt:class:field]

	control ::= [control:conditional] | [control:loop] 
		conditional ::= [conditional:if] | [conditional:switch]
	
			::| else-if stmt must come after if, there may also be a list of else-ifs.
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
			while ::= while([expr:conditional]) {[stmt]; }
			do_while ::= do {[stmt]} while([expr:conditional]);

    exception ::= try {[stmt] } [exception:catch_stmt] -- [exception:finally_stmt] -- 
        catch_stmt ::= catch ([type:exception]) {[stmt]} | [catch_stmt]
        finally_stmt ::= finally{[stmt] }

	assingment ::= [id] [op:binary:assingment] [expr]

generic_parameter ::= [id:generic] -- , [generic_parameter] -- 

parameter ::= [type] [id::parameter] --, [parameter] -- 

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

### Type system
- reference types
    - interface types 
    - class types
    - array type
    - generics
    
- value types
    - integral types
    - float type
    - boolean type
    - void type
    - char type

- type conversion
    - implicit -- compiler-generated type conversion e.g. valid type promotions
    - explicit -- user-defined type conversion
        - Casting: `([Type])([id])`
### Syntactical features
- operator overloading : not supported
- type annotation or type deduction : not supported
- type aliasing : not supported

Official documentation: https://docs.oracle.com/en/java/

### Code Conventions
- `camelCase` for naming variables and methods 
- `PascalCase` for naming classes