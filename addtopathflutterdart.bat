@echo off
setlocal EnableDelayedExpansion

echo.
echo === Flutter + Dart: Добавление в PATH ===
echo Добро пожаловать! Этот скрипт добавит Flutter и Dart в системный PATH.
echo Убедитесь, что Flutter установлен в D:\flutter (или измените пути ниже).
echo.

REM Пути к Flutter и Dart (измени, если папка не D:\flutter)
set FLUTTER_PATH=D:\flutter\bin
set DART_PATH=D:\flutter\bin\cache\dart-sdk\bin

REM Проверка, существуют ли пути (опционально, для гайда)
if not exist "%FLUTTER_PATH%" (
    echo ОШИБКА: Папка %FLUTTER_PATH% не найдена! Установите Flutter сначала.
    pause
    exit /b
)

echo Доступные варианты:
echo 1. Добавить только для текущего пользователя (без админ-прав)
echo 2. Добавить для всех пользователей (требует админ-прав)
echo.
set /p choice=Выберите 1 или 2 и нажмите Enter: 

if /i "%choice%"=="1" (
    echo.
    echo === Добавление для текущего пользователя ===
    setx PATH "%PATH%;%FLUTTER_PATH%;%DART_PATH%" /M 0
    echo Успех! Пути добавлены для вас.
    goto :finish
)

if /i "%choice%"=="2" (
    echo.
    echo === Добавление для всех пользователей ===
    setx PATH "%PATH%;%FLUTTER_PATH%;%DART_PATH%" /M 1
    echo Успех! Пути добавлены системно.
    goto :finish
)

echo.
echo ОШИБКА: Неверный выбор! Выберите 1 или 2.
pause
exit /b

:finish
echo.
echo === Готово! ===
echo - Перезапустите командную строку (cmd).
echo - Проверьте: flutter doctor
echo - Если пути не добавились, проверьте echo %PATH% в cmd.
echo.
pause
