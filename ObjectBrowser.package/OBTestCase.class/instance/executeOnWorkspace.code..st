as yet unclassified
executeOnWorkspace: aWorkspace code: aString
	| textMorphs textMorph |
	aWorkspace acceptContents: aString.	"ws acceptContents: codigoParaWS."
	textMorphs := aWorkspace dependents select: [ :c | c isKindOf: PluggableTextMorph ].
	textMorph := textMorphs first.
	textMorph doIt