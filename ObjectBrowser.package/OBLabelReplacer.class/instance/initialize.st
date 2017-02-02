initialization
initialize
	super initialize.
	values := Dictionary new.
	expr :=  '\*#(\w*)#\*' asRegex.