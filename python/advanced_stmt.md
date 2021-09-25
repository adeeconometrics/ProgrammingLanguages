`type:iterable ::= list | dict | tuple`

### Python list slicing
```expr:slice ::= [id::type:list] ~[[value::start]:[value::stop] -- :[value::step] -- ]~```

### Python list comprehensions

```stmt:list_comprehension ::= ~[[stmt] [stmt:control:loop:for] -- [stmt:control:if] --]~```

Example: 
```Python
	_ = [function(x) for x in range(0,10) if x > 5 ]
	_ = [(lambda y: pow(y,3))(x) for x in range(0,10) if x > 5]
	_ = [g:= function(x)].extend([g**x for x in range (0,10) if x > 5])
```


### Python map

```stmt:map ::= map([stmt:function], [type:iterable])```

Example:
```Python
	_ = list(map(f, [1,2,3,4,5]))
	_ = list(map(lambda x: pow(x,2), [1,2,3,4,5]))
```


### Python filter

```stmt:filter ::= filter([stmt:function], [type:iterable])```

Example: 
```	Python
    type_iterable = [x for x in range(-5,6)]
	_ = list(filter(lambda x: x => 5, type_iterable))
```

### Python Reduce

```
		::| defined in `functools` library.
		::| expects a function with two arguments.
stmt:reduce ::= reduce([stmt:function], [type:iterable])
```
Example:
```Python
    type_iterable = [x for x in range(-5,6)]
	_sum = list(filter(lambda first, second: first + second, type_iterable))
```

explanation:

stmt:function in reduce will calculate each element starting from the first
element to the last e.g. `reduce(lambda x,y: x + y, [1,2,3,4,5])` will compute
`(((((1+2)+3)+4)+5)`. 

performance:
	reduce function is written in C which makes it faster than explicit Python for loop.


### Python dictionary comprehension
```stmt:comprehension ::= {[id::key]:[id::value] [stmt:control:loop:for] [type:iterable] -- [stmt:control:if] --}```

Example:
```Python
	type_iterable = [x for x in range(-5,6)]
	_ = {x:f(x) for x in type_iterable if x > 5}

```

---
looping techniques

- enumerate()
- sorted()
- zip(*iterables)
- reversed()


---
The conditions used in while and if statements can contain any operators, not just comparisons.


---
### References
- https://docs.python.org/3/tutorial/datastructures.html#dictionaries
- https://book.pythontips.com/en/latest/map_filter.html#map
- https://stackoverflow.com/questions/12229064/mapping-over-values-in-a-python-dictionary
- https://realpython.com/python-reduce-function