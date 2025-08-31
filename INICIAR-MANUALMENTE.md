# 🚀 Como Iniciar o Sistema Izing - Manual

## 📋 Pré-requisitos
- Docker Desktop **RODANDO**
- Node.js instalado

## 🎯 Passo a Passo

### 1. Abrir 2 Terminais (PowerShell)

**Terminal 1 - Backend:**
```powershell
cd C:\Users\danie\CANAL-WPP\izing.open.io\backend
npm run dev:server
```

**Terminal 2 - Frontend:**
```powershell
cd C:\Users\danie\CANAL-WPP\izing.open.io\frontend
quasar dev
```

### 2. Aguardar Inicialização

**Backend:** Aguarde aparecer "Server running on port 3000"
**Frontend:** Aguarde aparecer "Local: http://localhost:3003"

### 3. Acessar o Sistema

- **URL:** http://localhost:3003
- **Email:** admin@izing.io
- **Senha:** 123456

## 🔧 Se Der Problema

### Docker não está rodando:
1. Abra o Docker Desktop
2. Aguarde a baleia ficar verde
3. Tente novamente

### Porta ocupada:
1. Feche outros programas
2. Reinicie o terminal
3. Tente novamente

### Erro de dependências:
```powershell
cd backend
npm install

cd ../frontend
npm install
```

## 🚪 Para Parar

**Nos terminais:** Ctrl+C
**Docker:** `docker-compose down` (no backend)

## ✅ Sucesso!

Quando funcionar, você verá:
- Backend rodando na porta 3000
- Frontend rodando na porta 3003
- Sistema acessível em http://localhost:3003
