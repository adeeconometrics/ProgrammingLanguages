

FreePascal Official documentation: https://www.freepascal.org/docs.html

---
Grammar
```
program::= program [id::program];
	begin
		[stmt]
	end.

stmt ::= [stmt:initialize] | [stmt:assignment] | [stmt:procedure] | [stmt:control] | [stmt:function] | [stmt:type] | [expr] | [stmt]

	initialize ::= [initialize:types] | [initialize:variables] | [initialize:constants]
		types ::= 
		variables ::= var [id:pack] : [type] -- = [value] --; | [initialize:variables]
		constants ::= const [id::variable] = [value];

	assignment ::= [id::variable] := [value]; | [stmt:assingment]
	
	procedure ::= begin
				[stmt]
			end;
	
	control ::= [control:loop] | [control:conditional] 
		loop ::= [loop:while] | [loop:for] | [loop:repeat]
			while ::= while [expr:condition] do [stmt:procedure]
			for ::= for [id] := [value::initial] to -- down to -- [value::final] do [stmt:procedure]
			repeat ::= repeat [stmt:procedure] until [expr:condition]

		conditional ::= [conditional:if] | [conditional:case]
			if ::= if [expr:condition] then [stmt:procedure] 
				-- else if [expr:condition] [stmt:procedure] --
				-- else [stmt:procedure] -- | [conditional:if]
	
			::| expr:condition must be evaluated to integral or enumerated type
			::| case:statements must be the same data type as the expression in the case statement
			case ::= case ([expr:condition]) of   
						[case:statements]
					end;

				case:statements ::= [id:pack]: [stmt:procedure] | [case:statements]
				
id ::= [id:pack]
	id:pack ::= [id] -- , [id:pack] --
```

---
Notes: 
- by default, uninitialized variables contain garbage values, so they should be initialized
- not sure if you can initialize multiple const values 

The Design philosophy of Pascal
- Code should close or significantly narrow the semantic gap
- Every code statement should be a clause in an English-language sentence
- Pascal program can be thought of as a sentence -- a concatenation of clauses
- Names of procedures, data structures, and variables in Pascal should be easily recognizeable

Design Guidelines:
- clarity
- modularity
- compaction
- reliability
- ease of maintenance