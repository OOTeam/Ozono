as yet unclassified
createRosarioObObject: lesson
	|rosario|
	
	rosario := lesson createObject.
	rosario compileMethod: 'ciudad
	^''Rosario'''.
	
	^rosario .