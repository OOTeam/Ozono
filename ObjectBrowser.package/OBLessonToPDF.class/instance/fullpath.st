calculated
fullpath
	^ (self path endsWith: '/')
		ifTrue:[ self path , self filename ]
		ifFalse:[ self path , '/' , self filename]