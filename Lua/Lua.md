### Lua

- Compiled
- Supports Generics
- Supports Prototype-based Object-Orientation
- Supports first-class functions
- Supports Closures

Note that Lua does not have variable data types. Instead, variables are classified based on its scope.

---
### Lua Grammar


```
program ::= [preamble] [stmt]

stmt ::= [expr] | [stmt:function] | [stmt:class] | [stmt:control] | [stmt]
    class ::=
    function ::= function [literal:string::name] ( [parameter] )
                    [stmt]
                    -- return [literal] --
                 end

    control ::= [control:loop] | [control:conditional]
        loop ::= [loop:while] | [loop:for] | [loop:repeat]
            while ::= while [expr:logical] do
                        [stmt]
                      end
            
            for ::= for [literal:number::start] = [literal:number::end], [literal:number::increment] do
                        [stmt]
                    end
            
            repeat ::= repeat 
                        [stmt]
                       until([expr:logical])


expr ::= [expr:logical] | [expr:arithmetic] | [expr:comparison] | [expr:assignment] | [expr]
	logical ::= [expr:logical] [op:binary:logical] [expr:logical] | [op:unary:logical] [expr:logical]
    arithmetic ::= [literal:number] [op:binary:arithmetic] [literal:number] 
    comparison ::= [expr:comparison] [op:binary:comparison] [expr:comparison]
    assignment ::= [variable] [op:binary:assignment] [expr]


op ::= [op:unary] | [op:binary]
	unary ::= [unary:misc] | [unary:logical]
        logical ::= not | -
        misc ::= #

	binary ::= [binary:logical] | [binary:arithmetic] | [binary:comparison] | [binary:assignment]
        logical ::= and | or
        arithmetic ::=  + | - | * | / | % | ^
        comparison ::= > | < | >= | <= | == | ~=
        assignment ::= =


literal ::= [literal:string] | [literal:number]
    string ::= [[a-z, A-Z, 0-9]] -- [op] | [punctuations] | [character_extensions] -- | [string]
    number ::= {0-9} | -$.$- [number]

```

Multiline comments `--[ comment --]`. 

Single line comment `-- comment`.

<!-- define variable -->