attributes
flushAttributesCache

	"We flush the cached attributed.
	We keep a cache because we are not the only ones that can add attributes into an object, which can happen also e.g., in method compilation."
	attributes := nil