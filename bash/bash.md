### Bash language Overview

Variables

Operators

Conditional Statements

Looping Statements

Functions

Arrays

---
### Grammar of a Bash subset

```
function ::= function [name:function]([parameters]){
            [stmt]
            -- return [value] -- 
        }

stmt::= [stmt:conditional] | [stmt:loop] | [expr] | [stmt]

    stmt:conditional ::= if [[ expr:condition ]]; then
                         -- [stmt] -- 
                         -- elif [[ expr:condition ]]; then [stmt] --
                         -- else [stmt] -- 
                         fi

    stmt:loop:for ::= for (([initialization]; [condition]; [increment])); do
                           [stmt]
                      done

    stmt:loop:ranged ::= for [name:variable] in {[value:initial]..[value:end] -- ..[value:step] --}; do
                             [stmt]
                         done

    stmt:loop:while ::= while [expr:condition]; do
                              [stmt]
                        done

expr ::= [expr:unary] | [expr:binary] | [expr]
    expr:unary ::= [op:unary] [expr]
    expr:binary ::= [expr] [op:binary] [expr]

op ::= [op:unary] | [op:binary]
    op:unary ::= ! | 
    op:binary:comparison ::= -ge | -gt | -le | -lt | -eq | -ne
    op:binary:arithmetic ::= + | - | * | / | % | = 
    op:binary:boolean ::= -o | -a

id ::= [[a-z,A-Z]]* [numbers]
numbers::= [[0-9]] | -$ . $- [numbers]
```