accessing
obtainObjectName
	| objectName |
	objectName := self request: 'Nombre del objeto' default: 'nuevoObjeto'.
	objectName ifNil: [OBOperationCancelled new signal].
	self validateVariableName: objectName.
	^ objectName