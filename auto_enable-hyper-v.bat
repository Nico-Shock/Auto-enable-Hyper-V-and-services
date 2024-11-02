@echo off
:: Überprüfen, ob das Skript als Administrator ausgeführt wird
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Administratorrechte erforderlich. Versuche das Skript als Administrator neu zu starten...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

:: Aktiviert Hyper-V
echo Aktiviere Hyper-V...
dism /online /enable-feature /featurename:Microsoft-Hyper-V-All /all /norestart

if %errorlevel% equ 0 (
    echo Hyper-V wurde erfolgreich aktiviert.
) else (
    echo Fehler beim Aktivieren von Hyper-V.
    exit /b
)

:: Setzt den Hypervisor-Starttyp auf "auto"
echo Setze Hypervisor-Starttyp auf auto...
bcdedit /set hypervisorlaunchtype auto

if %errorlevel% equ 0 (
    echo Der Hypervisor-Starttyp wurde erfolgreich auf "auto" gesetzt.
) else (
    echo Fehler beim Setzen des Hypervisor-Starttyps.
)

pause
