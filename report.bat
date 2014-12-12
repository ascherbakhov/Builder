if not defined test goto :EOF

echo Reporting to email..

set MAIL_TEXT="All is good"
set ATTACH_LOG=%BUILD_LOG%

if %CHECKOUT_ERROR%==true (
  set MAIL_TEXT="Git checkout error."
  set ATTACH_LOG=%CHECKOUT_LOG%
)
 
if %BUILD_ERROR%==true set MAIL_TEXT="Build Error."
 
if %CHECK_ERROR%==true  set MAIL_TEXT="Missing File %FILE_MISS%"

blat -body %MAIL_TEXT% -attach %ATTACH_LOG% -to %TO_MAIL% -s %TO_SUBJECT%

