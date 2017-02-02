literals
initializeLiterals
	literals := Dictionary new.
	
	literals at:#bag put: (OBBagPrototype newForLesson: self).
	literals at:#set put: (OBSetPrototype newForLesson: self).
	literals at:#ordered put: (OBOrderedCollectionPrototype newForLesson: self).
	literals at:#orderedcollection put: (OBOrderedCollectionPrototype newForLesson: self).
	literals at:#sorted put: (OBSortedPrototype newForLesson: self).
	literals at:#sortedcollection put: (OBSortedPrototype newForLesson: self).
	literals at:#dictionary put: (OBDictionaryPrototype newForLesson: self).
	
	literals values copy do: [:value | literals at: value collectionRealObjectClass superclass asString put: value ].
	literals at: #Error put: Error.