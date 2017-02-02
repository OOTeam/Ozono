as yet unclassified
createVariable: aVariableNameString referencingTo: anObject

	| newVariable |
	self validateVariableName: aVariableNameString.
	
	newVariable := self lesson
							createVariableNamed: aVariableNameString
							pointingTo: anObject.
							
	self dependants do:[ :d | d expandReferences].						
	self selectedItem: newVariable.