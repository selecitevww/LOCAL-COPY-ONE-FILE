@echo off
chcp 65001
color B
cls
ECHO УКАЖИТЕ ДИСК
set /p "ddссk="
cd %ddссk%
cls
ECHO УКАЖИТЕ ДИСК C ПАПКОЙ ОТКУДА
set /p ddisk=
cls
ECHO ИМЯ ФАЙЛА (* все)
set /p ffindpath=
cls
ECHO ДИСК И ИМЯ ФАЙЛА (* все) КУДА 
set /p "kudaddsk="
cls
color A
xcopy "%ddisk%\%ffindpath%" %kudaddsk% /COMPRESS /J /R /H /G /S /Y

ECHO МОЖЕТ ЕЩЕ ОДНИН(-ОГО) yesd - ДА : : : nop - НЕТ
set /p "pppthmm="
goto %pppthmm%

:yesd
:%pppthmm%
color B
cls

SET var2=qq && cls

ECHO УКАЖИТЕ ДИСК : : qq - Выйти :  : 
set /p "var1="

IF /I %var1% == %var2% (
    goto nop
) ELSE (
   cd %var1% && cls.
   goto nnext
)
:nnext
cls
ECHO УКАЖИТЕ ДИСК C ПАПКОЙ ОТКУДА
set /p ddisk=
cls
ECHO ИМЯ ФАЙЛА (* все)
set /p ffindpath=
cls
ECHO ДИСК И ИМЯ ФАЙЛА (* все) КУДА 
set /p "kudaddsk="
cls
color A
xcopy "%ddisk%\%ffindpath%" %kudaddsk% /COMPRESS /J /R /H /G /S /Y

ECHO МОЖЕТ ЕЩЕ ОДНИН(-ОГО) yesd - ДА : : : nop - НЕТ
set /p "pppthmm="
goto %pppthmm%

:nop
exit

pause
