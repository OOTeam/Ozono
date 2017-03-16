updating
updateLOOP

	[
		Gofer it
			url: 'https://github.com/OOTeam/Ozono.git';
			configurationOf: 'ObjectBrowser';
			loadVersion: #stable.
		self changed: #aboutText.
	] on: Warning do: [ :w | w resume  ]