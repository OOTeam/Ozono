as yet unclassified
openMenuIn: aBlock
	| alternatives labels actions lines caption choice name interval |
	interval := node sourceInterval.
	name := node name.
	alternatives := self possibleVariablesFor: name.
	labels := OrderedCollection new.
	actions := OrderedCollection new.
	lines := OrderedCollection new.
	name first isLowercase
		ifTrue: [ labels add: 'Declarar nuevo colaborador temporal'.
			actions add: [ self declareTempAndPaste: name ].
			labels add: 'Declarar nuevo colaborador interno'.
			actions add: [ self declareInstVar: name ].
			labels add: 'Crear nuevo objeto'.
			actions add: [ self createNewOBObjectWithName: name ] ].
	lines add: labels size.
	alternatives
		do: [ :each | 
			labels add: each.
			actions
				add: [ self substituteVariable: each atInterval: interval.
					(OCSourceCodeChanged new newSourceCode: self requestor text) signal ] ].
	lines add: labels size.
	labels add: 'Cancelar'.
	caption := 'Objeto o colaborador desconocido: ' , name
		, ' por favor, corregir o cancelar'.
	choice := aBlock value: labels value: lines value: caption.
	choice
		ifNotNil: [ self
				resume: (actions at: choice ifAbsent: [ compilationContext failBlock value ]) value ]