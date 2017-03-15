versions
version12: spec 
    <version: '1.2' imports: #('1.1-baseline')>
	spec for: #common do:[
		spec blessing: #development.
		spec project: 'smallUML' with: '1.1.3'.
		spec package: 'ObjectBrowser' with: 'ObjectBrowser-GuillermoPolito.367'.
	].