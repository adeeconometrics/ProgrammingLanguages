### PHP Overview of the Language
PHP is a general-purpose scripting language geared for web development. PHP is an interpreted language developed open-source that supports garbage collection. It is intended to handle file systems, communicate with databases, create dynamic page content, and encrypt data. A PHP file can contain HTML, CSS, JavaScript and PHP code with a `*.php` file extension.

### Features Table

| Feature                      | Status        |
|------------------------------|---------------|
| Garbage Collection           | Supported     |
| Concurrency                  | Supported     |
| Generics                     | Not Supported*|
| Object-Orientation           | Supported     |
| Abstract Class               | Supported     |
| Abstract Method              | Supported     |
| Restriction on Class members | Supported     |
| Constructor-Destructor pair  | Supported     |
| First-Class Function         | Supported     |
| Closure                      | Supported     |
| Reference Semantics          | Supported     |
| Value Semantics              | Supported*    |
| Type Composition             | Supported     |
| Tail-Call Optimization       | Not Supported |

- Interpreted until PHP 8 (JIT compiler)

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

::| statements and expressions are delimited with semi-colons.
stmt ::= [expr] | [stmt:control] | [stmt:assignment] | [stmt:function] | [stmt:class] |[stmt]
	control ::= [control:exception] | [control:loop] | [control:conditional] | [control:raise]
		exception ::= try: 
			[stmt] 
		except:
			[stmt]
		-- finally: 
			[stmt] -- 

		loop ::= [loop:while] | [loop:do_while] | [loop:for] | [loop:foreach]
			for ::= for([id::initial]; [expr:conditional]; [id:increment]){
				[stmt]
            }

            foreach ::= foreach($[id::iterable] as $[id]){
                [stmt]
            }

			while ::= while([expr:conditional]){
                [stmt]
            }

            do_while ::= do{
                [stmt]
            } while([expr:conditional]);

		conditional ::= [conditional:switch] | [conditional:if] 

            switch ::= switch([id::variable]){
                
                default:
                    [stmt]
            }
                case_stmt ::= case [expr:conditional]:
                    [stmt]
                    break; | [case_stmt]
            
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

	class ::= -- final | abstract -- class [id] -- extends [id::superclass] | implements [id:interface]{
        -- [class:variable] -- 
        -- [class:method] --
        -- [stmt] --  
    } 

        method ::= -- [modifier:method] -- function [id::function]([parameters]) -- :[type] -- {
            [stmt]
            -- return [expr] | [method] | [stmt:function] --;
        }

        variable ::= -- [modifier:variable]  -- [id::variable] -- = [value] -- ;

parameters ::= id::parameter -- :[type] -- -- = [value:default] |, [parameter] --

accessor ::= public | private | protected

modifier ::= [modifier:method] | [modifier:variable]
    method ::= abstract [accessor] |  [accessor] | static | [accessor] static
    variable ::= [accessor] | [accessor] static | static


expr ::= [expr:logical] | [expr:arithmetic] | [expr:comparison] | [expr:assignment] | [expr]
	logical ::= [expr:logical] [op:binary:logical] [expr:logical] | [op:unary:logical] [expr:logical]
    arithmetic ::= [literal:number] [op:binary:arithmetic] [literal:number] 
    comparison ::= [expr:comparison] [op:binary:comparison] [expr:comparison]
    assignment ::= [variable] [op:binary:assignment] [expr]


op ::= [op:unary] | [op:binary]
	unary ::= [unary:misc] | [unary:logical]
        logical ::= not | !
        misc ::= @ | ++ | --

	binary ::= [binary:logical] | [binary:arithmetic] | [binary:comparison] | [binary:assignment]
        logical ::= and | && | or | || | xor
        arithmetic ::=  + | - | * | / | % | ** 
		bitwise ::= >> | << | ^ | & | |
        comparison ::= > | < | >= | <= | == | === | !== | <> | !=
        assignment ::= = | += | -= | *= | /= | %= 

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