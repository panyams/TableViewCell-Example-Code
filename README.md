# TableViewCell-Example-Code
This is an example of how to use more than one prototype cells in a table view.  There are three custom cells.  Two of these cells have a Xib interface and one is customized inside the table view.
The left and the right xib cells have images placed on right and left side correspondingly.  Another swift cell class is used for center placement that does not have a xib, but the image is directly added to the tableview cell.  The struct that populates the table has three properties - image, label text and the alignment.  The alignment is used to assign the cell in a given row.
