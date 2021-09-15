Design philosophy of Pascal
- Code should close or significantly narrow the semantic gap
- Every code statement should be a clause in an English-language sentence
- Pascal program can be thought of as a sentence -- a concatenation of clauses
- Names of procedures, data structures and variables in Pascal should be easily recognizeable

Design Guidelines:
- clarity
- modularity
- compaction
- reliability
- ease of maintenance

FreePascal Official documentation: https://www.freepascal.org/docs.html

---
Grammar
```
program::= program [identifier::program];
	begin
		[stmt]
	end.

stmt ::= [stmt:initialize] | [stmt:assignment] | [stmt:procedure] | [stmt:control] | [stmt:function] | [stmt:type] | [expr] | [stmt]

	stmt:initialize ::= [initialize:types] | [initialize:variables] | [initialize:constants]
		initialize:types ::= 
		initialize:variables ::= var [identifier:pack] : [type] -- = [value] --; | [initialize:variables]
		initialize:constants ::= const [identifier::variable] = [value];

	stmt:assignment ::= [identifier::variable] := [value]; | [stmt:assingment]
	
	stmt:procedure ::= begin
				[stmt]
			end;
	
	stmt:control ::= [control:loop] | [control:conditional] 
		control:loop ::= [loop:while] | [loop:for] | [loop:repeat]
			loop:while ::= while [expr:condition] do [stmt:procedure]
			loop:for ::= for [identifier] := [value::initial] to -- down to -- [value::final] do [stmt:procedure]
			loop:repeat ::= repeat [stmt:procedure] until [expr:condition]

		control:conditional ::= [conditional:if] | [conditional:case]
			conditional:if ::= if [expr:condition] then [stmt:procedure] 
					-- else if [expr:condition] [stmt:procedure] --
					-- else [stmt:procedure] -- | [stmt:control:conditional:if]
	
			::| expr:condition must be evaluated to integral or enumerated type
			::| case:statements must be the same data type as the expression in the case statement
			condition:case ::= case ([expr:condition]) of   
						[case:statements]
					end;

				case:statements ::= [identifier:pack]: [stmt:procedure] | [case:statements]

identifier:pack ::= [identifier] |, [identifier:pack]
```

---
Notes: 
- by default, uninitialized variables contain garbage values, so they should be initialized
- not sure if you can initialize multiple const values 