references
hasReferencesTo: anOBObject

	^(self valuesReferenceTo: anOBObject) or: [ self keysReferenceTo: anOBObject ]