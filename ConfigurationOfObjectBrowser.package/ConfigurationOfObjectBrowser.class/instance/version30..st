versions
version30: spec
	<version: '3.0' imports: #('3.0-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #development.
			spec package: 'ObjectBrowser' with: 'ObjectBrowser-MatiFreyre.596'. 
			spec project: 'smallUML' with: '1.2'.
			spec project: 'artefact' with: '1.3' ]