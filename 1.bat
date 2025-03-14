@echo off
title Grigory Games
echo                                                           GRIGORY
echo                                                                  GAMES
echo                                                                        Company
echo                                                                                     ver 1.0
ㅤ
echo                               W
ㅤ
echo                                E
ㅤ
echo                                 L
ㅤ
echo                                  C
ㅤ
echo                                   O
ㅤ
echo                                    M
ㅤ
echo                                     E
ㅤ
echo                                      !
ㅤ
echo                                        https://grigorylushov.github.io
pause   
cls
color 0A
if "%1" neq "" ( goto %1)
pause
:Menu
cls
echo 1. Start
echo 2. Credits
echo 3. Exit
set /p answer=Нажмите на клавишу с соответствующей цифрой, а затем нажмите Enter : 
if %answer%==1 goto Start_1
if %answer%==2 goto Credits
if %answer%==3 goto Exit
:Exit
cls
echo Thank you for gaming!
pause
exit /b
:Credits
cls
echo Благодарность
echo.
echo Thank for OOO AO KGI Grigory Games and KGI GAMES!
pause
goto Menu