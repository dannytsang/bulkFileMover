REM read a text file and move it to a new location.
REM specify a text file with relative (to this script) or absolute file paths. This will move them to a new folder (parameter 2).
REM ---------------------------------
REM parameter 1: location of text file
REM parameter 2: folder to move files to
for /F "usebackq tokens=* delims=," %%G in ("%~1") do move "%%G" "%~2\"
