### PHP Overview of the Language
PHP is a general-purpose scripting language geared for web development. PHP is an interpreted language developed open-source that supports garbage collection. It is intended to handle file systems, communicate with databases, create dynamic page content, and encrypt data. A PHP file can contain HTML, CSS, JavaScript and PHP code with a `*.php` file extension.

---

#### Variable
- dynamically typed
- supports scoping: `global`, local, and `static` scoping
    - global scope - variables declared outside a function can only be accessed outside the function.
    - local scope - variables declared inside a function (scope) can only be accessed in that context.
    - static scope - are variables that live throughout the entire program (may it be local or not).

`global` keyword - allows to call global variables inside a function (scope).
```PHP
$x = 5;
$y = 10;

function method() {
  global $x, $y;
  $y = $x + $y;
}
```

`static` keyword - allows variable to live throughout the program. 
```PHP
// for each time method is called $x will be incremented
function method(){
    static $x = 0;
    echo $x; 
    $x += 1;
}
```

---
#### Operators
Arithmetic Operators
| Operator | Name           | Expression |
|----------|----------------|------------|
| `+`      | Addition       | `$a + $b`  |
| `-`      | Subtraction    | `$a - $b`  |
| `/`      | Division       | `$a/$b`    |
| `%`      | Modulus        | `$a % $b`  |
| `**`     | Exponentiation | `$a ** $b` |


Assignment Operators
| Operator | Name           | Expression                           |
|----------|----------------|--------------------------------------|
| `=`      | Assignment     | `$a = $b`                            |
| `+=`     | Addition       | `$a += $b` is same as `$a = $a + $b` |
| `-=`     | Subtraction    | `$a -= $b` is same as `$a = $a - $b` |
| `*=`     | Multiplication | `$a *= $b` is same as `$a = $a * $b` |
| `/=`     | Division       | `$a /= $b` is same as `$a = $a / $b` |
| `%=`     | Modulus        | `$a %= $b` is same as `$a = $a % $b` |

Comparison Operators
| Operator     | Name                              | Expression                       |
|--------------|-----------------------------------|----------------------------------|
| `==`         | Equal (checks value)              | `$a == $b`                       |
| `===`        | Identical (checks type and value) | `$a ====  $b`                    |
| `!=` or `<>` | Not Equal                         | `$a != $b` is same as `$a <> $b` |
| `!==`        | Not Identical                     | `$a !== $b`                      |
| `>`          | Greater Than                      | `$a > $b`                        |
| `<`          | Less Than                         | `$a  < $b`                       |
| `>=`         | Greater Than or Equal To          | `$a >= $b`                       |
| `<=`         | Less Than or Equal To             | `$a <= $b`                       |

Increment/Decrement Operators
| Operator Name  | Expression|
|----------------|---------|
| post-increment | `$a++`  |
| pre-increment  | `++$a`  |
| post-decrement | `$a--`  |
| pre-decrement  | `--$a`  |

Logical Operators
| Operator       | Name | Expression                 |
|----------------|------|----------------------------|
| `and` or `&&`  | And  | `$a and $b` or `$a && $b`  |
| `or` or `\|\|` | Or   | `$a or $b` or `$a \|\| $b` |
| `xor`          | XOR  | `$a xor $b`                |
| `!`            | Not  | `!$a`                      |

---
#### Conditional Statements
- if-clause 
- if-else 
- if-elseif-else
- switch-clause. 

If-clause form:
```PHP
if(<conditional_expr> | <logical_expr>){
    /*block of statements*/
}
```
If-Else clause form:
```PHP
if(<conditional_expr> | <logical_expr>){
    /*block of statements*/
} else {
    /*block of statements*/
}
```
If-Elseif-Else
```PHP
if(<conditional_expr> | <logical_expr>){
    /*block of statements*/
} elseif (<conditional_expr> | <logical_expr>) {
    /*block of statements*/
} else {
    /*block of statements*/
}
```
Switch clause
```PHP
switch(<variable>){
    case <expr>:
        break;
    default:
        <expr>;
}
```


---

#### Looping Statements
- while-loop
- do-while
- for-loop 
- foreach

While-loop
```PHP
while(<conditaional_expr> | <logical_expr>){
    /*block of statements*/
}
```

Do-While
```PHP
do{
    /*block of statements*/
} while(<conditaional_expr> | <logical_expr>);
```

For-Loop
```PHP
for(<initialization>; <conditional_expr> | <logical_expr>; <increment_expr>){
    /*block of statements*/
}
```

For-Each - traverse elements to a block array
```PHP
foreach($<array_name> as $<alias_element>){
    /*block of statements*/
}
```

- `break`- keyword to break the loop.
- `continue` - keyword to continue the loop and skip current execution.

---
#### Function Declaration

Since PHP 7 Type declarations can be asserted; enabling this will enforce strict tying. The forms we are going to see here are function declarations with loose typing and strict typing. 

loose typing
```PHP
function function_name($<params...>){
    /*block of statements*/
}
```

To enable strick typing in PHP one must declare it as follows:
```PHP
<?php declare(strict_type=1);

?>
```
If strict typing is enabled, function declaration will be annotated with types. Note that variables shall be annotated with types when type declarations are enabled.

```PHP
function function_name(<type> $<params...>):<return_type>{
    /*block of statements*/
}
```

---
#### Arrays
- Indexed Array - normal arrays where index are integer values that starts with 0.
- Associative Array - arrays that use names as keys.

Declaration syntax:
```PHP
// indexed array
$indexed = array(<e1>, <e1>, ..,<en> );
// associative array
$associative = array("<k1>" => "<v1>", "<k2>" => "<v2>", .., "<kn>" => "<vn>");
```

Indexing syntax:
```PHP
// indexed array
echo $indexed[1];
// associative array
echo $associative["<k1>"];
```

Multidimensional array example
```PHP
// indexed
$indexed = array(
    array(1,2,3), 
    array(4,5,6), 
    array(7,8,9)
);

// associative from 
// https://www.geeksforgeeks.org/multidimensional-associative-array-in-php/

$languages = array();
  
$languages['Python'] = array(
    "first_release" => "1991", 
    "latest_release" => "3.8.0", 
    "designed_by" => "Guido van Rossum",
    "description" => array(
        "extension" => ".py", 
        "typing_discipline" => "Duck, dynamic, gradual",
        "license" => "Python Software Foundation License"
    )
);
  
$languages['PHP'] = array(
    "first_release" => "1995", 
    "latest_release" => "7.3.11", 
    "designed_by" => "Rasmus Lerdorf",
    "description" => array(
        "extension" => ".php", 
        "typing_discipline" => "Dynamic, weak",
        "license" => "PHP License (most of Zend engine
             under Zend Engine License)"
    )
);
  
```
<!-- you should try multidimensional associative array -->

Methods related to Arrays
- `count($<array_name>)` - returns the length of an array.
- sort - for sorting arrays, put array name as an argument to the followinf functions:
    - functions for indexed array
        - `sort()` - ascending order
        - `rsort()` - descending order
    - functions for associative array
        - `asort()` - ascending order according to value
        - `ksort()` - ascending order according to key
        - `arsort()` - descending order according to value
        - `krsort()` - descending order according to key


#### PHP Grammar
```
class ::= final | abstract | class [name::class] | extends [name::superclass] | implements [name::interface] 
          { [method] | [variable] | [class] }

method ::= abstract | [accessor] | static | function [name::function] ([parameter]):[return_type]
           { [statements] | [expression] }

statements ::= [expression] | [statements]

expression ::= [ternary] | [binary] | [unary] | [value] | [expression]

binary ::=  [expression] | [operator::binary] | [expression]

unary ::= [operator::unary] | [expression]

parameter ::= [type] | [name::parameter] -- = value::default -- | [parameter]

accessor ::= public | private | protected

return_type ::= [type]

name ::= {A-z,a-z}* [numbers]

numbers::= {0-9} | [numbers]
```

Note that `abstract` methods can be implemented inside the context of `abstract` class.

PHP also supports interfaces. Multiple interfaces may be implemented in one class like in Java.
```
interface ::= interface [name::interface] | implements [name::parrent_interface] {}
```
To access an instance of class, arrow operator is used `->` e.g. `object->method();`. Note that static methods and properties inside the class may be accessed without instantiating the class. 
