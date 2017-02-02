accessing
objectsOrganizationSelected
	"self selectedTabIndex:  1."
	selectedPage := #objects.
	self selectedObjectBrowserVariable: OBNullLessonVariable new.
	self changed.