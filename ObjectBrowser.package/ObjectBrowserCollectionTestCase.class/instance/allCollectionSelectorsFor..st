as yet unclassified
allCollectionSelectorsFor: aClass
	^ (aClass selectors union: (aClass allSelectorsAboveUntil: Collection)) asSet