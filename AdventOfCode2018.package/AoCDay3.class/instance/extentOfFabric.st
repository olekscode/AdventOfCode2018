accessing
extentOfFabric 
	"Extent of fabric - maximum possible width and height of the fabric"
	| fabricWidth fabricHeight maxWidth maxHeight |
	
	fabricWidth := (input column: #left) + (input column: #width).
	fabricHeight := (input column: #top) + (input column: #height).
	
	maxWidth := fabricWidth max.
	maxHeight := fabricHeight max.
	
	^ maxWidth @ maxHeight
	