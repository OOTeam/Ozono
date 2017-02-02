methods
methods
	| allMethods dictionaryMethods |
	dictionaryMethods := Dictionary new.
	allMethods := prototype methods.
	allMethods do: [ :method | dictionaryMethods at: method selector put: method ].
	methods do: [ :method | dictionaryMethods at: method selector put: method ].
	^ dictionaryMethods values