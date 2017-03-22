as yet unclassified
createVariableButDoNotChangeFocus: aVariableNameString
	self validateVariableName: aVariableNameString.
	self lesson createVariableNamed: aVariableNameString pointingTo: self lesson createObject.
	self dependants do: [ :d | d expandReferences ].