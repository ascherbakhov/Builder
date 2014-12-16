if not defined test goto :EOF
set BUILD_FOLDER=C:\Users\home\Desktop\Hwlc\build_folder
set BUILDER_FOLDER=C:\Users\home\Desktop\Hwlc\Builder
set REPO_URL=https://github.com/ascherbakhov/GeoPointLine.git

set DOTNET_VERSION=v4.0.30319
set MSBUILD=%windir%\Microsoft.NET\Framework64\%DOTNET_VERSION%\MSBuild.exe
set PROJECT_NAME=GeoSol.sln

set CONFIG=/p:Configuration=Release;VisualStudioVersion=12.0
set BUILD_LOG=%BUILDER_FOLDER%\buildLog.txt
set FILES=%BUILDER_FOLDER%\files.txt 
set CHECKOUT_LOG=%BUILDER_FOLDER%\checkoutLog.txt

set TO_MAIL=fmen@mail.ru
set TO_SUBJECT="Report"

set CHECKOUT_ERROR=false
set BUILD_ERROR=false
set CHECK_ERROR=false

set BIN=%BUILD_FOLDER%\GeometryGUI\bin\Release
