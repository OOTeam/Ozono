querying
allTheObjects: allTheLessonObjects
	derreferencedObjects := allTheLessonObjects difference: objects .
	allTheLessonObjects do: [ :o | o accept: self ].