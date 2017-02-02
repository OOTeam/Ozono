accessing
obtainObjectName
	| objectName |
	objectName := self request: 'Nombre de la referencia al objeto' default: 'nuevaReferencia'.
	objectName ifNil: [OBOperationCancelled new signal].
	self validateVariableName: objectName.
	^ objectName