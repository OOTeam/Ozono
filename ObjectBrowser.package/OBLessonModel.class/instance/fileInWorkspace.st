accessing
fileInWorkspace
	| fileName inStream contents ws |
	fileName := UIManager default chooseFileMatching: #('*.ws') label: 'Selecciona el workspace a importar'.
	fileName ifNotNil:[
		[	inStream := StandardFileStream fileNamed: fileName.
			contents := inStream upToEnd.
		] 
		ensure: [inStream close.].
		ws := self createWorkspace: (fileName subStrings: '.') first contents: contents
	]