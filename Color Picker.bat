@echo off

IF NOT EXIST "config.bat" (goto :default-settings) ELSE (call "config.bat") && (goto :color-picker)

:default-settings
(
   echo set colorvar=F0
) > config.bat
CALL config.bat
goto :color-picker

:set-config
(
   echo set colorvar=%colorvar%
) > config.bat
CALL config.bat
goto :EOF

:color-picker
color %colorvar%
cls
echo 1 - Black on White
echo 2 - White on Black
echo 3 - Black on Green
echo 4 - Green on Black
echo.

set /p cols=Pick a number : 

IF %cols% == 1 (set colorvar=F0)
IF %cols% == 2 (set colorvar=0F)
IF %cols% == 3 (set colorvar=A0)
IF %cols% == 4 (set colorvar=0A)

call :set-config
goto :color-picker