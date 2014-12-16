if not defined test goto :EOF

del /Q /S /F %BUILD_FOLDER%
rmdir /S /Q %BUILD_FOLDER%


del %CHECKOUT_LOG%