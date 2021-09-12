### Ruby language Overview

[History]

[Features]

[Mostly used in]

---
#### Variables

---
#### Operators

Arithmetic Operators

| Operator | Name           | Expression |
|----------|----------------|------------|
| `+`      | Addition       | `a + b`    |
| `-`      | Subtraction    | `a - b`    |
| `/`      | Division       | `a/b`      |
| `%`      | Modulus        | `a % b`    |
| `**`     | Exponentiation | `a ** b`   |


Assignment Operators

| Operator | Name           | Expression                      |
|----------|----------------|---------------------------------|
| `=`      | Assignment     | `a = b`                         |
| `+=`     | Addition       | `a += b` is same as `a = a + b` |
| `-=`     | Subtraction    | `a -= b` is same as `a = a - b` |
| `*=`     | Multiplication | `a *= b` is same as `a = a * b` |
| `/=`     | Division       | `a /= b` is same as `a = a / b` |
| `%=`     | Modulus        | `a %= b` is same as `a = a % b` |
| `**=`    | Power          | `a **= b` is same as `a = a**b` | 


Comparison Operators 
| Operator  | Name                                                                                                                                 | Expression              |
|-----------|--------------------------------------------------------------------------------------------------------------------------------------|-------------------------|
| `==`      | Equal                                                                                                                                | `(a == b)`              |
| `!=`      | Not Equal                                                                                                                            | `(a != b)`              |
| `>`       | Greater Than                                                                                                                         | `(a > b)`               |
| `<`       | Less Than                                                                                                                            | `(a < b)`               |
| `>=`      | Greater Than or Equal                                                                                                                | `(a >= b)`              |
| `<=`      | Less Than or Equal                                                                                                                   | `(a <= b)`              |
| `===`     | Equality check for Objects.<br>Compares current class with<br>the other object's class.                                              | `(a === b)`             |
| `<=>`     | Combined Operator.<br>Returns 0 if `a`,`b` are equal.<br>Returns 1 if `a` is greater than `b`.<br>Returns -1 if `a` is less than `b` | `a <=> b`               |
| `.eql?`   | Checks if it has the same type and value.                                                                                            | `1.eql?(1.0)` is false. |
| `.equal?` | Checks if the object has the same `id`.                                                                                              | `a.equal?b`             |



Logical Operators 

| Operator       | Name | Expression                 |
|----------------|------|----------------------------|
| `and` or `&&`  | And  | `a and b` or `a && b`      |
| `or` or `\|\|` | Or   | `a or b` or `a \|\| b`     |
| `not`  or `!`  | Not  | `not a` or `!a`            |

Bitwise Operator

| Operator  | Name        | Expression |
|-----------|-------------|------------|
| `&`       | Bitwise And | `(a&b)`    |
| `\|`      | Bitwise Or  | `(a\|b)`   |
| `^`       | Bitwise XOR | `(a^b)`    |
| `~`       | Bitwise Not | `~a`       |
| `<<`      | Left Shift  | `a<<3`     |
| `>>`      | Right Shift | `a>>3`     |

---
#### Conditional expressions
- If-clause
- If-Else Clause
- If-Elsif-Else
- Unless statement
- Case statement

If-clause form:
```Ruby
if <conditional_expr> | <logical_expr> [then]
    # Block of expressions
end
```

If-Else clause form:
```Ruby
if <conditional_expr> | <logical_expr> [then]
    # Block of expressions
else 
    # Block of expressions
end
```

If-Elsif-Else:
```Ruby
if <conditional_expr> | <logical_expr> [then]
    # Block of expressions
elsif <conditional_expr> | <logical_expr> [then]
    # Block of expressions
else 
    # Block of expressions
end
```

Unless statement:
```Ruby
unless <expr> [then]
    # Block of expressions
else # optional
    # Block of expressions
end
```

Case statement:
```Ruby
case(<expr>)
    when <expr> [then] # can have multipe when-clause
        # Block of expressions
    else
        # Block of expressions
end
```

---
#### Looping expressions
- For-loop
- While-loop
- Until-loop
- Begin-While

For-loop
```Ruby
for <variable> [, <variable> ...] in <expr> [do]
    # Block of expressions
end
```
While-loop
```Ruby
while <conditional_expr> [do]
    # Block of expressions
end
```

Until-loop
```Ruby
until <conditional_expr> [do]
    # Block of expressions
end
```

- `break` - breaks the loop
- `next` - jumps current iteration to the next 
- `redo` - restarts iteration of the loop
- `retry` - restart from the beginning body in the following espression:

```Ruby
begin
   # block of expressions with exception raised
rescue
   # handles error
   retry  # restart from beginning
end
```

#### Functions
```Ruby
def method_name (<arguments...>[ = default])
   # Block of expressions
end
```
#### Arrays

Declaration syntax

```Ruby
# creating array
array = Array.new(<size>, <default_value>)
array = Array.new(<size>)
array = Array.new()
array = Array.[](<default__value, ...>)
array = Array[<default_value, ...>]
```

Indexing
```Ruby
array.at(<index>)
```
---
### Ruby Grammar
```
class ::= class [name::class] | < [name::superclass] | 
          [accessor] | [methods] | [variables] | [class] | 
          end

method ::= def [name::method] ([parameters])
           [expr]
           end

parameters ::= [name::parameter] -- = value::default -- | [parameters]

expr ::= [ternary] | [binary] | [unary] | [expr]

accessor ::= private | public | protected

name ::= [[A-z,a-z]]* [numbers]

numbers::= [[0-9]] | -$ . $- [numbers]
```
