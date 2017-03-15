versions
version10: spec 
    <version: '1.0' imports: #('1.0-baseline')>
	spec for: #common do:[
		spec blessing: #release.
		spec project: 'smallUML' with: '1.0'.
		spec package: 'CommandShell' with: 'CommandShell-dtl.49'.
		spec package: 'GraphViz' with: 'GraphViz-GuillermoPolito.47'.
		spec package: 'ObjectBrowser' with: 'ObjectBrowser-GermanLeiva.334'.
	].
	spec for: #unix do: [
		spec project: 'externalCommands' with: '4.3.12'.
	].
	spec for: #Win32 do: [
		spec project: 'externalCommands' with: '1.4'.
	]