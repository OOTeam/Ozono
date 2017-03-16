ui-actions
actionsForAttributeListWith: selectedAttribute

	| actions |
	actions := OrderedCollection with: #('Crear nuevo colaborador interno' createAttribute).
	actions addAll: (selectedAttribute actionsForAttributeList).
	^actions asArray