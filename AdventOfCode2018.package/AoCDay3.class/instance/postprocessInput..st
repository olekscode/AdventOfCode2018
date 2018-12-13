as yet unclassified
postprocessInput: anArrayOfRows
	"Converts input to DataFrame"
	^ (DataFrame
		fromRows: anArrayOfRows)
		columnNames: #(id left top width height).