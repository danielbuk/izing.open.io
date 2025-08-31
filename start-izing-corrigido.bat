@echo off
echo ========================================
echo    INICIANDO SISTEMA IZING - CORRIGIDO
echo ========================================

echo.
echo 1. Verificando Docker...
docker ps >nul 2>&1
if %errorlevel% neq 0 (
    echo ERRO: Docker nao esta rodando!
    echo Por favor, inicie o Docker Desktop
    pause
    exit /b 1
)

echo Docker OK!

echo.
echo 2. Iniciando servicos Docker...
cd backend
docker-compose up -d redis postgres rabbitmq
if %errorlevel% neq 0 (
    echo ERRO: Falha ao iniciar servicos Docker
    pause
    exit /b 1
)

echo Servicos Docker OK!

echo.
echo 3. Executando migracoes...
npm run build
npx sequelize db:migrate
npx sequelize db:seed:all

echo Migracoes OK!

echo.
echo 4. Iniciando Backend...
start "Backend Izing" cmd /k "cd /d %~dp0backend && npm run dev:server"

echo.
echo 5. Iniciando Frontend (com Node.js corrigido)...
start "Frontend Izing" cmd /k "cd /d %~dp0frontend && set NODE_OPTIONS=--openssl-legacy-provider && quasar dev"

echo.
echo ========================================
echo    SISTEMA INICIADO COM SUCESSO!
echo ========================================
echo.
echo Frontend: http://localhost:3003
echo Backend:  http://localhost:3000
echo.
echo Credenciais:
echo Email: admin@izing.io
echo Senha: 123456
echo.
pause
