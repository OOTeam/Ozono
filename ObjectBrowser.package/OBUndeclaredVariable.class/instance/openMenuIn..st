accessing
openMenuIn: aBlock 
	| alternatives labels actions lines caption choice |
	alternatives := parser possibleVariablesFor: name.
	labels := OrderedCollection new.
	actions := OrderedCollection new.
	lines := OrderedCollection new.
	labels add: 'Declare new temporary variable'.
	actions add: [parser declareTempAndPaste: name].
	labels add: 'Declare new instance variable'.
	actions add: [parser declareInstVar: name].

	lines add: labels size.

	alternatives do: 
		[:each | 
		labels add: each.
		actions add: [parser substituteVariable: each atInterval: interval]].

	lines add: labels size.
	labels add: 'Cancel'.
	caption := 'Unknown variable: ' , name , ' please correct, or cancel:'.
	choice := aBlock value: labels value: lines value: caption.
	choice ifNotNil: [self resume: (actions at: choice ifAbsent: [nil])]