cleaning
removeFromSystem

	executionContext class removeFromSystem.
	self lessonEnvironment do: [ :c | c isBehavior ifTrue: [ c removeFromSystem ] ].
	self lessonEnvironment removeAll.