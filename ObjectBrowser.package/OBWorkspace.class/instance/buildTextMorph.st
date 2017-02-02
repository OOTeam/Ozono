as yet unclassified
buildTextMorph
	| morph |
	"superclase cambiando clase concreta del textmorph"
	morph := WorkspacePluggableTextMorph 
					on: self 
					text: #contents 
					accept: #acceptContents:
					readSelection: nil 
					menu: #codePaneMenu:shifted:.
	
	morph font: StandardFonts codeFont.
	morph styler workspace: self.
	morph askBeforeDiscardingEdits: true.
	morph changedAction: [ :text | lesson changed ].
	^morph.