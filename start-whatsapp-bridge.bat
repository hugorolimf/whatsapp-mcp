@echo off
echo Iniciando WhatsApp Bridge...
echo.
echo IMPORTANTE: Se for a primeira vez, escaneie o QR code que aparecera no terminal
echo.
cd /d "%~dp0\whatsapp-bridge"
set PATH=%PATH%;C:\Program Files\Go\bin;C:\msys64\ucrt64\bin;C:\msys64\mingw64\bin
go env -w CGO_ENABLED=1
go run main.go
pause