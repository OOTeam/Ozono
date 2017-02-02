updating
updateLOOP

	[
		Gofer it
			url: 'http://www.smalltalkhub.com/mc/Uqbar/Ozono/main';
			package: 'ConfigurationOfObjectBrowser';
			load.
		(ConfigurationOfObjectBrowser project version: #stable) load.
		self changed: #aboutText.
	] on: Warning do: [ :w | w resume  ]