@echo off

@set CMD_SIGNTOOL="C:\Program Files (x86)\Windows Kits\10\bin\x64\signtool.exe"
@set URL_TIMESTAMP="http://timestamp.comodoca.com/authenticode"
@set CERT_PATH="chukong.p12"
@set CERT_PASSWORD="chukong"

@%CMD_SIGNTOOL% sign /v /f %CERT_PATH% /p %CERT_PASSWORD% /t %URL_TIMESTAMP% "%~dp0\..\..\CocosSimulatorWin_v1.0.exe"
