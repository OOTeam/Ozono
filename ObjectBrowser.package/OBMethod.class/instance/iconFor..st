ui
iconFor: anObject

	| redefines isRedefined |
	redefines := anObject redefines: self selector.
	isRedefined := anObject isRedefined: self selector.
	redefines & isRedefined ifTrue: [ ^OBIcons arrowUpAndDown ].
	redefines ifTrue: [ ^OBIcons arrowUp ].
	isRedefined ifTrue: [ ^OBIcons arrowDown ].
	^nil