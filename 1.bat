@echo off
title Grigory Games
echo                                                           GRIGORY
echo                                                                  GAMES
echo                                                                        Company
echo                                                                                     ver 1.0

echo                               �

echo                                �

echo                                 �

echo                                  �

echo                                   �

echo                                    �

echo                                      !

echo                                        https://grigorylushov.github.io
pause   
cls
color 0A
if "%1" neq "" ( goto %1)
pause
:Menu
cls
echo 1. ���
echo 2. �������୮���
echo 3. ��室
set /p answer=������ �� ������� � ᮮ⢥�����饩 ��ன, � ��⥬ ������ Enter : 
if %answer%==1 goto Start_1
if %answer%==2 goto Credits
if %answer%==3 goto Exit
:Exit
cls
echo ���ᨡ� �� ����!
pause
exit /b
:Credits                  
cls
echo �������୮���
echo.
echo ���ᨡ� Grigory Games!
pause
goto Menu
:Start_1
cls
echo � ���! �� ���㦥�� �ࠣ���.
echo �� ����, � �� ��� ����㦥��.
echo �᫨ �� �ࠧ���� � ����, � ��� ���� 蠭�� �� ������.
echo �ࠧ����� 1 㡥���� 2
set /p answer=�ࠧ����� ��� 㡥����?
if %answer%==1 goto Fight_1
if %answer%==2 goto Run_1
pause
:Run_1
cls
echo �� �릨��, �⮡� �ࠧ����� � ��㣮� ࠧ.
pause
goto Start_1
:Fight_1
echo �ਣ�⮢���� � �墠⪥.
echo �ࠣ� �������� �⠪����� ���.
echo ���� ��⮢�!
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
echo �� �ந�ࠫ�. ����� �� ࠧ?
pause
goto Menu
:Win_Fight_1
cls
echo �� ��������!
set /p answer=���� ��࠭��� ����? [�/�]
if %answer%=='�' goto 'Save'
if %answer%=='�' goto 'Start_2'
:Save
goto Start_2
:Start_2
echo � ���! �� ���㦥�� �ࠣ���.
echo �� ����, � �� ��� ����㦥��.
echo �᫨ �� �ࠧ���� � ����, � ��� ���� 蠭�� �� ������.
echo �ࠧ����� 1 ������� 2
set /p answer=�ࠧ����� ��� 㡥����?
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
echo �� �ந�ࠫ�. ����� �� ࠧ?
pause
goto Menu
:Win_Fight_2
cls
echo �� ��������!
set /p answer=���� ��࠭��� ����? [�/�]
if %answer%=='�' goto 'Save'
if %answer%=='�' goto 'Start_1'
:Run_2
:Start_2
echo � ���! �� ���㦥�� �ࠣ���.
echo �� ������ � ��� ����㦥�� �஡�������!
echo �� �� ᬮ��� ᡥ����!
pause
goto Fight_2