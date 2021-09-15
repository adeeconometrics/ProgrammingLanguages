# ScriptingLanguages
This repository contain a collection of programming languages. It is meant to serve a 
quick tour on programming languages as well as provide an overview of its features, 
syntax, and semantics. This repository provide a survey of a programming language 
in regards to the following areas of concern:

- Mostly suited for
	- systems programming
	- shell scripting
	- web development
	- network programming
	- machine learning 
	- application development
	- back-end development
	- front-end development

- Features
	- compiled or interpreted
	- support for garbage collection
	- support for generics
	- support for object-orientation
		- RAII
		- Multiple Inheritance
		- Abstract class
		- Restriction on member access
	- support for first-class functions
	- support for closure

- Operators
	- operator precedence  

- CFG grammar

- type system
	- reference types
	- value types
	- type conversion

- syntactical features
	- operator overloading
	- type annotation or type deduction
	- type aliasing

- official documentation

At best, our attempt to capture the syntactical rules of languages may only account to its 
subset. The aim is to quickly survey programming languages and provide a brief catalogue 
of its features, type system, and grammatical rules. Code examples and official 
documentation of such languages will also be provided.  

The grammatical construction of a language is described using Simplified Backus-Naur Form 
(S-BNF). [BNF](https://bityl.co/8eOv) is known as a metasyntax notation that succinctly 
express the syntactical constructions (rules for grammar) of Context-Free languages. Since 
most programming languges are context-free, BNF is expressive enough for describing valid 
syntactical constructions. S-BNF does not mean we reduced the syntactical rules of BNF, it 
is quite the opposite, S-BNF simplifies and organizes syntactical forms by adding more 
syntactical sugar. 

<br>

### What is added on S-BNF?
S-BNF defines a notion of scope and references for organizing groups of statements, expressions, operators, and type systems. S-BNF aim to define the syntactical constructions of a programing language with a program. 



<br>

| Symbol        | Meaning                                                                        | Example                                                                                                                    |
|---------------|--------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------|
| `[N] ::= T`   | describes the production rule for a non-terminal symbol `N`.                   | `stmt::=  [expr] \| [stmt]` means that a statement <br>may be constructed with an expression or statements.                |
| `[N]`         | denotes a non-terminal symbol.                                                 | In the above example, `[stmt]` is a non-terminal <br>symbol that refers to itself.                                         |
| `-- value --` | denotes an optional construction that may redefine the meaning of a statement. | a paramter that may contain a default <br>value is written as `var -- = value:default --`.                                 |
| `type:symbol` | denotes a category of non-terminal symbol.                                     | `stmt:control:loop:while` describes a while statement --<br> which is a form of loop, which is a kind of control.          |
| `type::alias` | denotes an alias of that type which clarifies its intent.                      | `id::variable` is an identifier of a variable.                                                                             |
| `\|`          | denotes an alternative form that can be derived from non-terminal symbols.     |                                                                                                                            |
| `-$ [op] $-`  | means the operator can only be inserted once in the sequence,                  | `[number] ::= [[0-9]] \| -$ - $- -$.$- [number]` means a construction of number may be of decimal type or<br>integral type |
| `[[symbol]]*` | means a symbol may be extended indefinately.                                   | `[[abc]]*` derives constructions for `abcabcabc...` while `[[a,b,c]]*` can derive constructions for `a*b*c*`.               |
| `::\| `       | denotes single-line comment.                                                   | `::\| comment.`                                                                                                            |
<br>

**Note:** in special cases where `[` and `]` are necessary, e.g. subscript of an array, we write the corresponding signifiers `~[ ]~` are used to denote that we literally use `[]`.


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