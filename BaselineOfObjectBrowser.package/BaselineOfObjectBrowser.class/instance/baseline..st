as yet unclassified
baseline: spec
	<baseline>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec
			package: 'ConfigurationOfObjectBrowser';
			postLoadDoIt: #loadConfiguration. ]