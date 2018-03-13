
%PYTHON% setup.py install
if errorlevel 1 exit 1

REM rename arcsi.py to arcsi-script.py so it doesn't
REM get picked up when user runs arcsi.py 
REM (the .bat file will due to the way Windows works)
move %SCRIPTS%\arcsi.py %SCRIPTS%\arcsi-script.py
if errorlevel 1 exit 1

REM copy over batch file that calls the python on the path
REM and runs arcsi-script.py wih the command line params given
copy %RECIPE_DIR%\arcsi.py.bat %SCRIPTS%\
if errorlevel 1 exit 1
