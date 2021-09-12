# ScriptingLanguages
This repository contains archival collection of programming (scripting) languages.

The grammatical construction of a language is described using Simplified Backus-Naur Form (S-BNF). [BNF](https://bityl.co/8eOv) is known as a metasyntax notation that succinctly express the syntactical constructions (rules for grammar) of Context-Free languages. Since most programming languges are context-free, BNF is expressive enough for describing valid syntactical constructions. S-BNF does not mean we reduced the syntactical rules of BNF, it is quite the opposite, S-BNF simplifies and organize syntactical forms by adding more syntactical sugar. 



 - `[N] ::= T` - describes the production rule for a non-terminal symbol `N`.
 - `[N]` - denotes a non-terminal symbol.
 - `-- value --` - denotes an optional construction that may redefine the meaning of a statement, e.g. a paramter that may contain a default value is written as `var -- = value:default --`.
 - `type:symbol` - denotes a category of non-terminal symbol, e.g. in most languages, expressions may be categorized as unary, binary, or ternary which corresponds to `expr ::= [expr:unary] | [expr:binary] | [expr:ternary] | [expr]`.
 - `|` - denotes an alternative form that can be derived from non-terminal symbols.
 - `-$ [op] $-` - means the operator can only be inserted once in the sequence, e.g. a construction of numbers may only have one `.` for denoting decimal values, we may write this in S-BNF as `[number] ::= [[0-9]] | -$.$- [number]`. 
 - `[[symbol]]*` - means a symbol may be extended indefinately, e.g. an indefinite constructions of `a` maybe written as `a*`, likewise, an indefinite construction of `abc` as in `abcabcabc...` may be written as `[[abc]]*` note that this is different from `[[a,b,c]]*` which can derive `a*`, `b*`, `c*`. Formally, this is known as the Kleene Star operator. 

Note: in special cases where `[` and `]` are necessary, e.g. subscript of an array, we write the corresponding sigils `~[ ]~` to denote that we literally use `[]`.

---
At best, our attempt to capture the syntactical rules of languages may only account to its subset. That said, the aim is to quickly survey languages 

 
- object
- method
- function
- parameter
- name 
    - name: variable
        - name: parameter
        - name: function
        - name: object
        - name: method
- stmt -- stand for statement
	- stmt: conditional
	- stmt: loop
- expr -- stand for expression
- op -- stand for operator
	- op: unary
	- op: binay
	- op: ternary

---
### Common Form of Programming Languages in expressed in S-BNF
```
program ::= -- [preamble:generation] -- [stmt] -- [preamble:termination] --

[stmt] ::= [expr] | [stmt:function] | [stmt:class] | [stmt:control] | [stmt]

[expr] ::= [expr:unary] | [expr:binary] | [expr:ternary] | [expr]
	expr:unary ::= [op:unary] [expr]
	expr:binary ::= [expr] [op:binary] [expr]
	expr:ternary ::= [expr] [op:ternary] [expr] [op:ternary]

op ::= [op:unary] | [op:binary] | [op:ternary]
	op:unary ::= !
	op:binary ::= [op:binary:logical] | [op:binary:arithmetic] | [op:binary:comparison] | [op:binary:assignment]


literals ::= [string] | [number]

string ::= [[a-z, A-Z, 0-9]] -- [operators] | [punctuations] | [character_extensions] -- | [string]
number ::= {0-9} | -$.$- [number]
```