@echo off
:: Überprüfen, ob das Skript mit Administratorrechten ausgeführt wird
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Administratorrechte erforderlich. Versuche das Skript als Administrator neu zu starten...
    powershell -Command "Start-Process cmd -Argument '%~s0' -Verb RunAs"
    exit /B
)

pushd "%~dp0"
dir /b %SystemRoot%\servicing\Packages\*Hyper-V*.mum >hyper-v.txt
for /f %%i in ('findstr /i . hyper-v.txt 2^>nul') do dism /online /norestart /add-package:"%SystemRoot%\servicing\Packages\%%i"
del hyper-v.txt
Dism /online /enable-feature /featurename:Microsoft-Hyper-V -All /LimitAccess /ALL
pause

