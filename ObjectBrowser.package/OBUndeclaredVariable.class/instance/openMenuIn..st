accessing
openMenuIn: aBlock
	| alternatives labels actions lines caption choice |
	alternatives := parser possibleVariablesFor: name.
	labels := OrderedCollection new.
	actions := OrderedCollection new.
	lines := OrderedCollection new.
	labels add: 'Declarar nuevo colaborador temporal'.
	actions add: [ parser declareTempAndPaste: name ].
	labels add: 'Declarar nuevo colaborador interno'.
	actions add: [ parser declareInstVar: name ].
	labels add: 'Crear nuevo objeto'.
	actions add: [ self halt ].
	lines add: labels size.
	alternatives
		do: [ :each | 
			labels add: each.
			actions add: [ parser substituteVariable: each atInterval: interval ] ].
	lines add: labels size.
	labels add: 'Cancelar'.
	caption := 'Colaborador desconocido: ' , name , ' por favor, corregir o cancelar'.
	choice := aBlock value: labels value: lines value: caption.
	choice ifNotNil: [ self resume: (actions at: choice ifAbsent: [ nil ]) ]