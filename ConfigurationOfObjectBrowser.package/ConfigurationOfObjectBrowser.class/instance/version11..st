versions
version11: spec 
    <version: '1.1' imports: #('1.0-baseline')>
	spec for: #common do:[
		spec blessing: #release.
		spec project: 'smallUML' with: '1.1.3'.
		spec package: 'CommandShell' with: 'CommandShell-dtl.49'.
		spec package: 'GraphViz' with: 'GraphViz-GuillermoPolito.48'.
		spec package: 'ObjectBrowser' with: 'ObjectBrowser-GiselaDecuzzi.353'.
	].
	spec for: #unix do: [
		spec project: 'externalCommands' with: '4.3.12'.
	].
	spec for: #Win32 do: [
		spec project: 'externalCommands' with: '1.4'.
	]