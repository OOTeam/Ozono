as yet unclassified
confirmDeletionOf: anObject
	^ UIManager default confirm: anObject deleteConfirmationMessage trueChoice: 'Si' falseChoice: 'No'