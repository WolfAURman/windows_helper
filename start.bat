@ECHO off
ECHO 1. You have Windows 7 x32
ECHO 2. You have Windows 7 x64
ECHO 3. You have Windows 10 x64/32
set /p choice=Enter the number to start the installation
if '%choice%'=='' ECHO "%choice%" Is not a valid option. Try again
if '%choice%'=='1' goto win7x86
if '%choice%'=='2' goto win7x64
if '%choice%'=='3' goto win10x86_64
ECHO.

:: Переход к выбору 32 битной семёрки
:: Transition to the choice of 32 bit windows 7
:win7x86

:: Если tmp файл существует, продолжается установка далее с этапа win7x86-2
:: If the tmp file exists, the installation continues further from the win7x86-2 stage
if exist "%~dp0tmp" goto win7x86-2

:: Первый запуск. Создаётся tmp файл для последующей полной установки после перезагрузки
:: The first launch. A tmp file is created for subsequent full installation after reboot
:win7x86-1
echo 1> "%~dp0tmp"
certutil -addstore -enterprise Root "%~dp0\common\MicrosoftRootCertificateAuthority2011.cer"
start /wait "%~dp0\86\windows6.1-kb3033929-x86_927e018113fe51250c57029635d46b89bf235920.msu" /s /Param
exit

:: Второй запуск. Удаляется tmp файл и устанавливается NET Framework
:: The second launch. The tmp file is deleted and the NET Framework is installed
:win7x86-2
del /a /f /q "%~dp0tmp" 2>nul 1>&2
start /wait "%~dp0\common\ndp48-x86-x64-allos-enu.exe" /s /Param
exit

:: Переход к выбору 64 битной семёрки
:: Transition to the choice of 64 bit windows 7
:win7x64

:: Если tmp файл существует, продолжается установка далее с этапа win7x64-2
:: If the tmp file exists, the installation continues further from the win7x64-2 stage
if exist "%~dp0tmp" goto win7x64-2

:: Первый запуск. Создаётся tmp файл для последующей полной установки после перезагрузки
:: The first launch. A tmp file is created for subsequent full installation after reboot
:win7x64-1
echo 1> "%~dp0tmp"
certutil -addstore -enterprise Root "%~dp0\common\MicrosoftRootCertificateAuthority2011.cer"
start /wait "%~dp0\64\windows6.1-kb3033929-x64_5c56222b0caf43030addc9ad262633fcbddfcd41.msu" /s /Param
exit

:: Второй запуск. Удаляется tmp файл и устанавливается NET Framework
:: The second launch. The tmp file is deleted and the NET Framework is installed
:win7x64-2
del /a /f /q "%~dp0tmp" 2>nul 1>&2
start /wait "%~dp0\common\ndp48-x86-x64-allos-enu.exe" /s /Param
exit

:: Установка NET Framework для 32/64 битной windows 10
:: Installing NET Framework for 32/64 bit windows 10
:win10x86_64
start /wait "%~dp0\common\ndp48-x86-x64-allos-enu.exe" /s /Param
exit