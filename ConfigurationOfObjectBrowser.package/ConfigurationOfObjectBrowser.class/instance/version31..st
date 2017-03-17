versions
version31: spec
	<version: '3.1' imports: #('3.1-baseline')>
	spec
		for: #common
		do: [ spec blessing: #development.
			spec package: 'ObjectBrowser' with: 'ObjectBrowser-MatiasMelendi.608'.
			spec project: 'smallUML' with: '1.2'.
			spec project: 'artefact' with: '1.3' ]