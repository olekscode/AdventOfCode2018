accessing
rowToMatrix: aSeries
	"Converts row of DataFrame to matrix of zeros with ones denoting the rectangle"
	| extent matrix rowStartIndex rowEndIndex columnStartIndex columnEndIndex |
	
	extent := self extentOfFabric.
	matrix := PMMatrix zerosRows: extent x cols: extent y.
	
	rowStartIndex := (aSeries atKey: #left) + 1.
	rowEndIndex := (aSeries atKey: #left) + (aSeries atKey: #width).
	
	columnStartIndex := (aSeries atKey: #top) + 1.
	columnEndIndex := (aSeries atKey: #top) + (aSeries atKey: #height).
	
	rowStartIndex to: rowEndIndex do: [ :i |
		columnStartIndex to: columnEndIndex do: [ :j |
			matrix at: i at: j put: 1 ] ].
	
	^ matrix
	