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
#### Conditional Statement
- if-clause 
- if-else 
- if-elseif-else
- switch-clause. 

If-clause form:
```PHP
if(<conditional_expr> | <logical_expr>){
    /*block of stmt*/
}
```
If-Else clause form:
```PHP
if(<conditional_expr> | <logical_expr>){
    /*block of stmt*/
} else {
    /*block of stmt*/
}
```
If-Elseif-Else
```PHP
if(<conditional_expr> | <logical_expr>){
    /*block of stmt*/
} elseif (<conditional_expr> | <logical_expr>) {
    /*block of stmt*/
} else {
    /*block of stmt*/
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

#### Looping Statement
- while-loop
- do-while
- for-loop 
- foreach

While-loop
```PHP
while(<conditaional_expr> | <logical_expr>){
    /*block of stmt*/
}
```

Do-While
```PHP
do{
    /*block of stmt*/
} while(<conditaional_expr> | <logical_expr>);
```

For-Loop
```PHP
for(<initialization>; <conditional_expr> | <logical_expr>; <increment_expr>){
    /*block of stmt*/
}
```

For-Each - traverse elements to a block array
```PHP
foreach($<array_name> as $<alias_element>){
    /*block of stmt*/
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
    /*block of stmt*/
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
    /*block of stmt*/
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

---
## Math Functions in PHP

- `abs([numeric] [id])` - returns absolute value of `[id]` with type `[numeric]`.
- `ceil([numeric] [id])` - returns a rounded up value of `[id]` with type `[numeric]`.
- `floor([numeric] [id])` - returns a rounded down value of `id` with type `[numeric]`.
- `round([numeric] [id])` - rounds a float.
- `min(array [id]):mixed` - returns min value.
- `max(array [id]):mixed` - returns max value.

Random generators
- `rand():int` - returns a random value.
- `rand(int [id::min], int [id::max]):int` - returns a random value within a given range.
- `srand(int [id::seed] = 0, int [id::mode] = MT_RAND_MT19937):void` - seeds random generator with `[id::seed]` 
or with a random value when the seed is `0`.
- `mt_rand(): int` - generates random value via the Mersenne Twister Random Number generator.
- `mt_rand(int [id::min], int [id::max]): int` - generates random value via the Mersenne Twister Random Number 
generator.
- `mt_srand(int [id::seed] = 0, int [id::mode] = MT_RAND_MT19937): void` - Seeds the random number generator 
with seed or with a random value if no seed is given..

Trigonometric Functions
- `sin(float [id]):float`
- `asin(float [id]):float`
- `sinh(float [id]):float`
- `asinh(float [id]):float`
- `cos(float [id]):float`
- `acos(float [id]):float`
- `cosh(float [id]):float`
- `acosh(float [id]):float`
- `tan(float [id]):float`
- `atan(float [id]):float`
- `tanh(float [id]):float`
- `atanh(float [id]):float`

Exponential Functions
- `sqrt(float [id]):float`
- `pow([numeric] [id::num], [numeric] [id::exponent]): int | float | object`
- `exp(float [id::num]):float` - calculates exponent of `e` (Euler's number).
- `log(float [id::num], float [id::base] = M_E):float` - defaults to `e` (Euler's number).
- `log10(float [id::num]):float`
- `log1p(float [id::num]): float` - calculates `log(1 + [id::num])`.

<br>

Official documentation of built-in math functions: https://www.php.net/manual/en/ref.math.php