# 🚀 Guia de Uso - Sistema Izing

## 📋 Pré-requisitos

- **Docker Desktop** instalado e rodando
- **Node.js** versão 18 ou superior
- **npm** instalado

## 🎯 Como Iniciar o Sistema

### Opção 1: Script Automático (Recomendado)
1. **Clique duas vezes** no arquivo `start-izing.bat`
2. **Aguarde** o sistema inicializar automaticamente
3. **Acesse** http://localhost:3003

### Opção 2: Manual
1. **Abra o Docker Desktop**
2. **Abra 2 terminais** no diretório do projeto
3. **Terminal 1 (Backend):**
   ```bash
   cd backend
   docker-compose up -d
   npm run dev:server
   ```
4. **Terminal 2 (Frontend):**
   ```bash
   cd frontend
   quasar dev
   ```

## 🔐 Primeiro Acesso

**Credenciais Padrão:**
- **Email:** admin@izing.io
- **Senha:** 123456

## 📱 Configurando WhatsApp

1. **Faça login** no sistema
2. Vá em **Canais** → **WhatsApp**
3. Clique em **"Conectar WhatsApp"**
4. **Escaneie o QR Code** com seu WhatsApp
5. **Pronto!** Você pode começar a atender

## 🛠️ Funcionalidades Principais

### ✅ Atendimento
- **Receber mensagens** automaticamente
- **Responder** aos clientes
- **Enviar mídias** (imagens, áudios, documentos)
- **Histórico** de conversas

### ✅ Chatbot
- **Respostas automáticas** configuráveis
- **Fluxos de conversa** personalizados
- **Horário de funcionamento**

### ✅ Gestão
- **Múltiplos usuários**
- **Filas de atendimento**
- **Relatórios** e estatísticas
- **Tags** para organizar contatos

## 🚪 Como Parar o Sistema

### Opção 1: Script Automático
- **Clique duas vezes** no arquivo `stop-izing.bat`

### Opção 2: Manual
- **Feche os terminais** (Ctrl+C)
- **Pare o Docker:** `docker-compose down`

## 🔧 Portas Utilizadas

- **Frontend:** http://localhost:3003
- **Backend API:** http://localhost:3000
- **PostgreSQL:** 5432
- **Redis:** 6379
- **RabbitMQ:** 5672
- **RabbitMQ Management:** http://localhost:15672

## 📞 Suporte

Se encontrar problemas:
1. **Verifique** se o Docker está rodando
2. **Reinicie** o sistema com `start-izing.bat`
3. **Verifique** as portas não estão sendo usadas
4. **Consulte** os logs nos terminais

## 🎉 Pronto para Usar!

O sistema está configurado e pronto para atendimento multicanal!
