@echo off
title Grigory Games
echo                                                           GRIGORY
echo                                                                  GAMES
echo                                                                        Company
echo                                                                                     ver 1.0

echo                               П

echo                                Р

echo                                 И

echo                                  В

echo                                   Е

echo                                    Т

echo                                      !

echo                                        https://grigorylushov.github.io
pause   
cls
color 0A
if "%1" neq "" ( goto %1)
pause
:Menu
cls
echo 1. Пуск
echo 2. Благодарность
echo 3. Выход
set /p answer=Нажмите на клавишу с соответствующей цифрой, а затем нажмите Enter : 
if %answer%==1 goto Start_1
if %answer%==2 goto Credits
if %answer%==3 goto Exit
:Exit
cls
echo Спасибо за игру!
pause
exit /b
:Credits                  
cls
echo Благодарность
echo.
echo Спасибо Grigory Games!
pause
goto Menu
:Start_1
cls
echo О нет! Вы окружены врагами.
echo Их пятеро, и все они вооружены.
echo Если вы сразитесь с ними, у вас есть шансы на победу.
echo Сразиться 1 убежать 2
set /p answer=Сразиться или убежать?
if %answer%==1 goto Fight_1
if %answer%==2 goto Run_1
pause
:Run_1
cls
echo Вы выжили, чтобы сразиться в другой раз.
pause
goto Start_1
:Fight_1
echo Приготовьтесь к схватке.
echo Враги внезапно атаковали вас.
echo Будьте готовы!
goto Fight_1_Loop
:Fight_1_Loop
set /a num=%random%
if %num% gtr 4 goto Fight_1_Loop
if %num% lss 1 goto Fight_1_Loop
if %num%==1 goto Lose_Fight_1
if %num%==2 goto Win_Fight_1
if %num%==3 goto Win_Fight_1
if %num%==4 goto Win_Fight_1
:Lose_Fight_1
cls
echo Вы проиграли. Сыграть еще раз?
pause
goto Menu
:Win_Fight_1
cls
echo Вы победили!
set /p answer=Хотите сохранить игру? [д/н]
if %answer%=='д' goto 'Save'
if %answer%=='н' goto 'Start_2'
:Save
goto Start_2
:Start_2
echo О нет! Вы окружены врагами.
echo Их пятеро, и все они вооружены.
echo Если вы сразитесь с ними, у вас есть шансы на победу.
echo Сразиться 1 Убежать 2
set /p answer=Сразиться или убежать?
if %answer%==1 goto Fight_2
if %answer%==2 goto Run_2
:Fight_2
set /a num=%random%
if %num% gtr 4 goto Fight_2_Loop
if %num% lss 1 goto Fight_2_Loop
if %num%==1 goto Lose_Fight_2
if %num%==2 goto Win_Fight_2
if %num%==3 goto Win_Fight_2
if %num%==4 goto Win_Fight_2
cls
:Lose_Fight_2
echo Вы проиграли. Сыграть еще раз?
pause
goto Menu
:Win_Fight_2
cls
echo Вы победили!
set /p answer=Хотите сохранить игру? [д/н]
if %answer%=='д' goto 'Save'
if %answer%=='н' goto 'Start_1'
:Run_2
:Start_2
echo О нет! Вы окружены врагами.
echo Их десять и они вооружены дробовиками!
echo Вы не сможете сбежать!
pause
goto Fight_2