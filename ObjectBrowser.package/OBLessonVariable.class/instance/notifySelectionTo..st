selection
notifySelectionTo: anObserverCollection

	anObserverCollection do: [ :o | o selectedClassOrMetaClass: (OBPharoReflection uniqueInstance classOf: self pointsTo baseObject) ]