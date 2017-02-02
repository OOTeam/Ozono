tests
testCollect
	|expected collectionCollected|
	
	self putSomeElements.
	collectionCollected :=self collection collect: [:num|num+2].
	expected := self expectedOnCollect .
	self assert: expected size equals: collectionCollected size.
	self assert: (collectionCollected allSatisfy: [:e| expected includes: e] ).
	