if not defined test goto :EOF

echo Checking build..

for /F "tokens=*" %%i in (%FILES%) do if not exist "%BIN%\%%i" (
	set FILE_MISS=%%i
	goto :err
)

echo Build OK.
goto :EOF  

:err
echo Not found: %FILE_MISS%
set CHECK_ERROR=true