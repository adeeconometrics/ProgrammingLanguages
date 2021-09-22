### PHP Overview of the Language
PHP is a general-purpose scripting language geared for web development. PHP is an interpreted language developed open-source that supports garbage collection. It is intended to handle file systems, communicate with databases, create dynamic page content, and encrypt data. A PHP file can contain HTML, CSS, JavaScript and PHP code with a `*.php` file extension.


- Interpreted until PHP 8 (JIT compiler)
- Does not support generics.
- Supports class-based Object-Orientation
    - Supports RAII
    - Supports abstract class, and abstract methods
    - Does not support multiple inheritance

- Supports first-class functions.
- Supports closure.

### Syntactical features
- Does not support operator overloading. 
- Supports type annotations.
- Supports type aliasing.

Official Documentation: https://www.php.net/


#### PHP Grammar

```
program ::= <?php  -- declare(strict_typing = 1); -- 
    [stmt] 
    ?>

stmt ::= [expr] | [stmt:control] | [stmt:assignment] | [stmt:function] | [stmt:class] |[stmt]
	control ::= [control:exception] | [control:loop] | [control:conditional] | [control:raise]
		exception ::= try: 
			[stmt] 
		except:
			[stmt]
		-- finally: 
			[stmt] -- 

		loop ::= [loop:while] | [loop:do_while] | [loop:for] | [loop:foreach]
			loop:for ::= for [id] in [type:iterable]:
				[stmt]

			loop:while ::= while [expr:conditional]:
				[stmt]

		conditional ::= [conditional:switch] | [conditional:if]

            switch ::= switch([id::variable]){
                case [expr:conditional]:
                    [stmt]
                    break;
                default:
                    [stmt]
            }
            
            if ::= if ([expr:conditional]){
                [stmt]
            }
            -- elseif ([expr:conditional]){
                [stmt]
            } --
            -- else{
                [stmt]
            } -- 

	assignment ::= [id] [op:binary:assignment] [expr]
	function ::= function [id]([parameters]) -- :[type] --{
		[stmt]
		-- return -- [stmt:function] | [expr] -- --
    }

	class ::= -- final | abstract --- class [id] -- extends [id::superclass] | implements [id:interface]{
        [class:variable]
        [class:method]
    } 

        method ::= abstract [accessor] |  [accessor] | static | [accessor] static -- function [id::function]([parameters]):[type]{
            [stmt]
        }

        variable ::= -- [accessor] | [accessor] static | static -- [id::variable] -- = [value] -- ;

parameters ::= id::parameter -- :[type] -- -- = [value:default] |, [parameter] --
accessor ::= public | private | protected

expr ::= [ternary] | [binary] | [unary] | [value] | [expr]
    binary ::=  [expr] | [op:binary] | [expr]
    unary ::= [op:unary] | [expr]


return_type ::= [type]

id ::= $[[A-z,a-z]]* [numbers]
    id:variable ::= -- [type] -- [id] -- = [value:default] -- ;

numbers::= [[0-9]] | -$ . $- [numbers]
```

Note that `abstract` methods can be implemented inside the context of `abstract` class.

PHP also supports interfaces. Multiple interfaces may be implemented in one class like in Java.
```
interface ::= interface [name:interface] | implements [name:parent_interface] {}
```
To access an instance of class, arrow operator is used `->` e.g. `object->method();`. Note that static methods and properties inside the class may be accessed without instantiating the class. 

---
### Function and Variables 

PHP supports first-class citizen functions, which means we can compose functions that map into other functions indefinitely. 
There are different 