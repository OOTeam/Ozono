replacing
processElement: anElement
	| key |
	anElement
		text:
			(expr
				copy: anElement text
				translatingMatchesUsing: [ :m | 
					key := expr subexpression: 2.
					(values at: key ifAbsent: [ m ]) asString ])