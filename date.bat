@ECHO

SET srcdir=d:\Batchfile
SETLOCAL ENABLEDELAYEDEXPANSION
FOR /F "TOKENS=*" %%F IN ('DIR /B /AD "%srcdir%\*"') DO (
    SET fname=%%~F
    SET fname=!fname:~0,8!
    SET fname=!fname!
    REN "%srcdir%\%%~XNF" "!fname!%DATE%"
)
EXIT