accessing
fileInTests
	| fileName inStream contents st |
	fileName := UIManager default chooseFileMatching: #('*.st') label: 'Selecciona el test a importar'.
	fileName ifNotNil:[
		[	inStream := StandardFileStream fileNamed: fileName.
			contents := inStream upToEnd.
		] 
		ensure: [inStream close.].
		st := self createTest: (fileName subStrings: '.') first contents: contents
	]