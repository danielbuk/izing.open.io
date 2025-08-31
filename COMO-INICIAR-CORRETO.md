# 🚀 Como Iniciar o Sistema Izing - CORRETO

## ⚠️ IMPORTANTE: Execute os comandos EXATAMENTE como mostrado!

## 📋 Pré-requisitos
- Docker Desktop **RODANDO** (baleia verde)
- Node.js instalado

## 🎯 Passo a Passo CORRETO

### 1. Abrir 2 Terminais PowerShell SEPARADOS

**Terminal 1 - Backend:**
```powershell
cd C:\Users\danie\CANAL-WPP\izing.open.io\backend
npm run dev:server
```

**Terminal 2 - Frontend (COM CORREÇÃO DO NODE.JS):**
```powershell
cd C:\Users\danie\CANAL-WPP\izing.open.io\frontend
$env:NODE_OPTIONS="--openssl-legacy-provider"
quasar dev
```

### 2. O que você deve ver:

**Backend (Terminal 1):**
```
Server running on port 3000
Database connected
```

**Frontend (Terminal 2):**
```
Local: http://localhost:3003
```

### 3. Se der erro:

**Erro do Sharp:**
```powershell
cd C:\Users\danie\CANAL-WPP\izing.open.io\backend
npm install --platform=win32 --arch=x64 sharp
npm run dev:server
```

**Erro do Node.js OpenSSL (Frontend):**
```powershell
cd C:\Users\danie\CANAL-WPP\izing.open.io\frontend
$env:NODE_OPTIONS="--openssl-legacy-provider"
quasar dev
```

### 4. Acessar o Sistema

- **URL:** http://localhost:3003
- **Email:** admin@izing.io
- **Senha:** 123456

## ❌ NÃO FAÇA:

- ❌ Não execute no diretório raiz
- ❌ Não use `npm run dev:server` no diretório raiz
- ❌ Não use `quasar dev` sem a correção do Node.js
- ❌ Não use o script automático se der erro

## ✅ FAÇA:

- ✅ Execute nos diretórios corretos
- ✅ Use `$env:NODE_OPTIONS="--openssl-legacy-provider"` no frontend
- ✅ Aguarde aparecer as mensagens de sucesso
- ✅ Mantenha os terminais abertos
- ✅ Use Ctrl+C para parar

## 🎉 Sucesso!

Quando funcionar, você verá:
- Backend rodando na porta 3000
- Frontend rodando na porta 3003
- Sistema acessível em http://localhost:3003

## 🔧 Script Automático Corrigido

Use o arquivo `start-izing-corrigido.bat` que já inclui todas as correções!
