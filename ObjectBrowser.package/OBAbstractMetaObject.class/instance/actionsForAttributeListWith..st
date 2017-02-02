ui-actions
actionsForAttributeListWith: selectedAttribute

	| actions |
	actions := OrderedCollection with: #('Crear nueva referencia' createAttribute).
	actions addAll: (selectedAttribute actionsForAttributeList).
	^actions asArray