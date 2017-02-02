execution
getValueFromContext: anOBVariable

	| value |
	value := self instVarNamed: anOBVariable name.
	anOBVariable pointTo: value metaObject.