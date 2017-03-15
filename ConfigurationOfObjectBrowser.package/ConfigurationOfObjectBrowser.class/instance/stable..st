symbolic
stable: spec  
	<symbolicVersion: #stable>
	
	| latest |
	latest := '3.0'.
	
	"Default"
	spec for: #'common' version: latest.
	
	spec for: #'pharo1.1.x' version: '1.0'.
	spec for: #'pharo1.2.x' version: '1.3'.
	spec for: #'pharo1.3.x' version: '1.3.1'.
	spec for: #'pharo1.4.x' version: '1.4.5'.
	spec for: #'pharo2.0.x' version: '2.0.3'.
	spec for: #'pharo3.0.x' version: latest.