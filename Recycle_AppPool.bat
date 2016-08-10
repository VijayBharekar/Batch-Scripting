ECHO OFF
CLS
:MENU
ECHO.
SET /P M=Do you want to Recycle App Pool [y/n]:
IF %M%=="y" GOTO apppool
IF %M%=="n" GOTO exit
IF %M%=="N" GOTO exit
IF %M%=="Y" GOTO exit
:apppool
appcmd recycle apppool /apppool.name:<app pool name>
echo "Successfully recycled PartnerServicesAppPool"
pause 
:exit
exit

