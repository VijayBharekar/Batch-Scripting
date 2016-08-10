ECHO OFF
CLS
:MENU
ECHO *************************************************
ECHO Current status on <ServiceName> Service is :
sc query <ServiceName> | findstr STATE
ECHO.
ECHO *************************************************
ECHO.
ECHO 1 - Start Service
ECHO 2 - Stop Service
ECHO 3 - Restart Service
ECHO 4 - Exit
ECHO.
SET /P M=Select above option [1/2/3/4] and press Enter:
IF %M%==1 GOTO start
IF %M%==2 GOTO stop
IF %M%==3 GOTO restart
IF %M%==4 GOTO exit

:start
net start <ServiceName>
GOTO MENU
:stop
net stop <ServiceName>
GOTO MENU
:status
sc query <ServiceName>
GOTO MENU
:restart
net stop <ServiceName> && net start <ServiceName>
GOTO MENU
:exit
exit