REM read a text file and move it to a new location.
REM specify a text file with relative (to this script) or absolute file paths. This will move them to a new folder (parameter 2).
REM ---------------------------------
REM parameter 1: location of text file
REM parameter 2: folder to move files to
SET fileList="%~1"
SET destinationFolder="%~2\"
@echo source:%fileList%
@echo destination:%destinationFolder%
REM check if destination exists. If not create it
IF not exist %destinationFolder% (
	mkdir %destinationFolder% && echo %destinationFolder% created
)
for /F "usebackq tokens=* delims=," %%G in (%fileList%) do move "%%G" %destinationFolder%
