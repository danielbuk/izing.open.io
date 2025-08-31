@echo off
echo =======================================================
echo    LIMPANDO PORTAS 8080 E 8081
echo =======================================================
echo.

echo Verificando processos nas portas 8080 e 8081...
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

echo.
echo Portas limpas! Agora você pode executar o iniciar.bat
echo.
pause
