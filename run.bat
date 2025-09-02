@echo off
echo.
echo === Flutter + Dart Setup: Запуск с правами администратора ===
echo Этот файл запускает addtopathflutterdart.bat с повышенными правами.
echo.
echo Если появится запрос UAC, подтвердите (для добавления в PATH для всех пользователей).
echo.

REM Путь ко второму скрипту (в той же папке)
set SCRIPT_PATH=%~dp0addtopathflutterdart.bat

REM Запуск с правами админа через PowerShell
powershell -Command "Start-Process cmd -ArgumentList '/c \"%SCRIPT_PATH%\"' -Verb RunAs"

echo.
echo Скрипт запущен в новом окне! Следуйте инструкциям там.
echo После завершения перезапустите командную строку и проверьте: flutter doctor
pause
