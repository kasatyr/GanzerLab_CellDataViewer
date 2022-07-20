# GanzerLab_CellDataViewer

combine.m requires input of a 5 row matrix

will read as follows:
row1: reference slide number
row2: vmPFC count 1
row3: vmPFC count 2
row4: IC count 1
row5: IC count 2

executes the following:
replace non-number values with zero
return 3 row matrix
row1: reference slide number
row2: vmPFC count total
row3: IC count total

App will read files formatted by combine.m and present "stacked" bar graph
