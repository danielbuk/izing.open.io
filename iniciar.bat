@echo off
REM Define o título da janela principal
title Iniciando o Izing...

echo =======================================================
echo    INICIANDO O SISTEMA Izing - Backend e Frontend
echo =======================================================
echo.
echo Configuração das portas:
echo    Backend: http://localhost:8080
echo    Frontend: http://localhost:8081
echo.
echo Limpando portas antes de iniciar...
echo.

REM Verifica e mata processos na porta 8080
for /f "tokens=5" %%a in ('netstat -ano ^| findstr :8080 ^| findstr LISTENING') do (
    echo Encerrando processo na porta 8080 (PID: %%a)
    taskkill /PID %%a /F >nul 2>&1
)

REM Verifica e mata processos na porta 8081
for /f "tokens=5" %%a in ('netstat -ano ^| findstr :8081 ^| findstr LISTENING') do (
    echo Encerrando processo na porta 8081 (PID: %%a)
    taskkill /PID %%a /F >nul 2>&1
)

echo Portas limpas!
echo.
echo Abrindo o terminal do Backend...
echo.

REM Inicia uma nova janela do PowerShell para o Backend
start "Backend Izing" powershell -NoExit -Command "& { Set-Location -Path 'C:\Users\danie\CANAL-WPP\izing.open.io\backend'; Write-Host 'Iniciando servidor do backend na porta 8080...'; npm run dev:server }"

echo Abrindo o terminal do Frontend...
echo.

REM Aguarda um pouco para não misturar as janelas
timeout /t 3 >nul

REM Inicia uma nova janela do PowerShell para o Frontend com a correcao
start "Frontend Izing" powershell -NoExit -Command "& { Set-Location -Path 'C:\Users\danie\CANAL-WPP\izing.open.io\frontend'; $env:NODE_OPTIONS='--openssl-legacy-provider'; Write-Host 'Iniciando servidor do frontend na porta 8081...'; quasar dev }"

echo =======================================================
echo    Processo finalizado. Verifique as duas janelas.
echo =======================================================
echo.
echo    Backend: http://localhost:8080
echo    Frontend: http://localhost:8081
echo =======================================================

pause