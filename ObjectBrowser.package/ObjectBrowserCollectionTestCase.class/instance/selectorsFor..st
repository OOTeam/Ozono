as yet unclassified
selectorsFor: aSymbol
	^ (currentLesson literalNamed: aSymbol) clone metaObject methods collect: #selector