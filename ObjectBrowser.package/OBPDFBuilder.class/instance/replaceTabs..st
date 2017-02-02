convertion
replaceTabs: aString
	| st |
	st := WriteStream on: String new.
	aString
		do: [ :c | 
			c = Character tab
				ifTrue: [ st nextPutAll: '    ' ]
				ifFalse: [ st nextPut: c ] ].
	^ st contents