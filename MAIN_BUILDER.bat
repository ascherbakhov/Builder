@echo off
set test=true

call settings.bat

call clean.bat 

call checkout.bat
if "%CHECKOUT_ERROR%"=="true" goto :err

call build_project.bat
if "%BUILD_ERROR%"=="true" goto :err

cd /d %BUILDER_FOLDER%
call build_check.bat

cd /d %BUILDER_FOLDER%
:err
call report.bat