### Grammar of Logics

---
Propositional logic

```
expr := -- name:variable -- := value -- -- | [expr]
expr ::= [expr] [op:binary] [expr] | [op:unary] [expr]

	op:binary ::= and | or | ->
	op:unary  ::= not
```
---
Qunatification logic

```
stmt ::= [expr] | [op:unary][type].([expr]) | [stmt]

expr ::= [expr] [op:binary] [expr] | [op:unary] [expr]

	op:binary ::= and | or | ->
	op:unary  ::= not | ∀  | ∃
```