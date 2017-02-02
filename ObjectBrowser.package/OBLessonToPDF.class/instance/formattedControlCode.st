calculated
formattedControlCode
	| r |
	r:=''.
	self controlCode withIndexDo: [ :e :i |
		( i \\ 16 = 0) ifTrue:[ r := r , ' ' ].
		r := r , e asString.
	].
	^r.