@echo off
echo ========================================
echo    PARANDO SISTEMA IZING
echo ========================================

echo.
echo 1. Parando servicos Docker...
cd backend
docker-compose down

echo.
echo 2. Fechando janelas do sistema...
taskkill /f /im node.exe >nul 2>&1
taskkill /f /im quasar.exe >nul 2>&1

echo.
echo ========================================
echo    SISTEMA PARADO COM SUCESSO!
echo ========================================
pause
