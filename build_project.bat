if not defined test goto :EOF

echo Building projects..

cd /d %BUILD_FOLDER%\Hwlc\ProjectName
%MSBUILD% %Project_NAME% %CONFIG% >>%BUILD_LOG%

if ERRORLEVEL 1 goto :err

echo Build ok.
goto :EOF

:err
set BUILD_ERROR=true
echo Build error! 