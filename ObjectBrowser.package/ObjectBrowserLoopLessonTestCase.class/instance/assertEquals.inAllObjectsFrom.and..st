tests
assertEquals: block inAllObjectsFrom: aLesson and: otherLesson
	aLesson variables do: [ :variable 
			 |  self assert: (block value: (self find: variable in: otherLesson) pointsTo)
				equals:  (block value: variable pointsTo) ]
