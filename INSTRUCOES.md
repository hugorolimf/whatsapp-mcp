# Instruções de Instalação e Uso - WhatsApp MCP

## Instalação Concluída ✅

O WhatsApp MCP foi instalado com sucesso no seu sistema para uso com o **Kilo Code**!

## Como Usar

### Passo 1: Iniciar o WhatsApp Bridge
1. Execute o arquivo `start-whatsapp-bridge.bat` na pasta `whatsapp-mcp`
2. Na primeira execução, um QR code será exibido no terminal
3. Escaneie o QR code com o aplicativo WhatsApp do seu celular
   - Abra WhatsApp > Menu > Dispositivos Conectados > Conectar dispositivo
4. Aguarde a conexão ser estabelecida

### Passo 2: Reiniciar o Kilo Code
1. Feche e reabra o VS Code com o Kilo Code (se já estiver aberto)
2. O WhatsApp aparecerá como uma integração disponível no MCP

### Passo 3: Usar o WhatsApp no Kilo Code
Agora você pode usar comandos como:
- "Procure meus contatos"
- "Liste minhas conversas recentes"
- "Envie uma mensagem para [nome/numero]"
- "Mostre as últimas mensagens com [contato]"

## Arquivos Importantes

- **Configuração**: `c:/Users/Hugo/AppData/Roaming/Code/User/globalStorage/kilocode.kilo-code/settings/mcp_settings.json`
- **Bridge Go**: `whatsapp-mcp\whatsapp-bridge\`
- **Servidor MCP**: `whatsapp-mcp\whatsapp-mcp-server\`
- **Database**: `whatsapp-mcp\whatsapp-bridge\store\`
- **Script de Inicialização**: `whatsapp-mcp\start-whatsapp-bridge.bat`

## Solução de Problemas

### Se o QR code não aparecer:
- Feche o bridge e execute novamente
- Verifique se o terminal suporta exibição de QR codes

### Se as mensagens não carregarem:
- Pode levar vários minutos para sincronizar na primeira vez
- Verifique se o bridge está rodando em segundo plano

### Se precisar reautenticar (após ~20 dias):
- Delete os arquivos `whatsapp-bridge\store\messages.db` e `whatsapp-bridge\store\whatsapp.db`
- Execute o bridge novamente e escaneie o QR code

### Erro de CGO no Windows:
O CGO já foi configurado, mas se encontrar problemas:
- Verifique se o MSYS2 está instalado
- Execute o bridge com o script fornecido

### Erro de cliente desatualizado:
Se aparecer erro "Client outdated (405)":
- As dependências já foram atualizadas para a versão mais recente
- O código foi corrigido para compatibilidade com a nova API
- Execute o bridge novamente com o script atualizado

### Erros de compilação:
Se aparecerem erros sobre argumentos faltando:
- O código já foi corrigido para adicionar os parâmetros de contexto necessários
- Execute o bridge novamente com o script atualizado

## Requisitos Instalados

✅ Go 1.25.1
✅ Python 3.13.7
✅ UV 0.8.22
✅ MSYS2 (para compilador C)
✅ MinGW-w64 Toolchain (GCC)
✅ Dependências do WhatsApp MCP

## Scripts Auxiliares

- **start-whatsapp-bridge.bat**: Inicia o bridge Go com as variáveis de ambiente configuradas
- **install-msys2-toolchain.bat**: Instala o compilador GCC necessário para o CGO (já executado)

## Suporte

Para mais informações, consulte o README original no repositório:
https://github.com/lharries/whatsapp-mcp