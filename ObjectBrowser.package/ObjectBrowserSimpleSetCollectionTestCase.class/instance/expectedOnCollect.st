as yet unclassified
expectedOnCollect 
	|expected|
	expected := (currentLesson literalNamed: #set) clone.
	^expected add: 7; add: 8;add: 10;yourself. 
	