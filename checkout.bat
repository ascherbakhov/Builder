if not defined test goto :EOF

echo Checkouting from git

git clone %REPO_URL% %BUILD_FOLDER% > %CHECKOUT_LOG%

if ERRORLEVEL 1 goto :err

echo Checkout done.
goto :EOF

:err
set CHECKOUT_ERROR=true
echo Checkout Error.