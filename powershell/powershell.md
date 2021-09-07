### Powershell language Overview

Variables

Operators

Conditional Statements

Looping Statements

Functions

Arrays

---
### PowerShell Gramma

```

class ::= class [name::class] {
            [variable] | [method]
       }

method ::= -- [type] -- [name::method] ([parameter]) {
            [statement]
            -- return [value] --
       }

function ::= -- [type] -- function [name::function] -- ([parameter]) -- {
            -- params ([parameter]) -- 
            [statement] | [function]
            -- return [value] --
        }

parameter ::= -- [type] -- name::parameter | [parameter]

statement ::= [expression] | [statement]

expression ::= [binary] | [unary] | [expression] 

binary ::= [expression] [operator::binary] [expression]

unary ::= [operator::unary] [expression]

name ::= {A-z,a-z}* [numbers]

numbers::= {0-9} | [numbers]
```