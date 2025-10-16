# Biblioteca Escolar - Ginestal Machado

## Frontend React (Vite)

Localização: `frontend/`

Pré-requisitos: Node 20+.

Instalação e execução:

```bash
cd frontend
npm install
npm run dev
```

Por omissão, abre em `http://localhost:5173`. O app aponta para os endpoints PHP existentes (`/GM_BIBLIOTECA/*.php`).

Build de produção:

```bash
cd frontend
npm run build
```

Os ficheiros gerados ficam em `frontend/dist/`. Pode servir estes ficheiros sob `GM_BIBLIOTECA/frontend/` se desejar.

Sistema web para biblioteca escolar com funcionalidade de adição de códigos postais portugueses à base de dados.

## 🚀 Funcionalidades

- **Interface Moderna**: Design responsivo com Bootstrap 5
- **Sistema de Códigos Postais**: Formulário para adicionar novos códigos postais portugueses à base de dados
- **Validação de Dados**: Validação client-side e server-side
- **Interface Responsiva**: Funciona em desktop, tablet e mobile
- **Navegação Suave**: Scroll suave entre seções

## 📋 Pré-requisitos

- XAMPP (Apache + MySQL + PHP)
- Navegador web moderno
- Conexão com internet (para CDNs do Bootstrap)

## 🛠️ Instalação

### 1. Configurar XAMPP
1. Inicie o XAMPP Control Panel
2. Inicie os serviços Apache e MySQL
3. Acesse http://localhost/phpmyadmin

### 2. Criar Base de Dados
1. Abra o phpMyAdmin
2. Execute o script SQL do arquivo `criar_tabela_codigos_postais.sql`
3. Ou execute manualmente:
   ```sql
   CREATE DATABASE gmbiblioteca;
   USE gmbiblioteca;
   -- Execute o conteúdo do arquivo SQL
   ```

### 3. Configurar Arquivos
1. Coloque todos os arquivos na pasta `C:\xampp\htdocs\GM_BIBLIOTECA\`
2. Ajuste as configurações de conexão no arquivo `adicionar_codigo_postal.php` se necessário:
   ```php
   $host = 'localhost';
   $dbname = 'gmbiblioteca';
   $username = 'root';
   $password = '';
   ```

### 4. Acessar o Sistema
1. Abra o navegador
2. Acesse: `http://localhost/GM_BIBLIOTECA/`
3. Navegue até a seção "Código Postal" para testar o formulário

## 📁 Estrutura de Arquivos

```
GM_BIBLIOTECA/
├── index.php                          # Página principal
├── adicionar_codigo_postal.php        # Processamento do formulário
├── criar_tabela_codigos_postais.sql   # Script de criação da base de dados
└── README.md                          # Este arquivo
```

## 🎯 Como Usar

### Adicionar Código Postal
1. Acesse a seção "Código Postal" no menu
2. Preencha o formulário com:
   - Código Postal (formato: 0000-000)
   - Endereço completo
   - Cidade
   - Distrito (seleção)
   - Bairro
   - Observações (opcional)
3. Clique em "Adicionar à Base de Dados"
4. Aguarde a confirmação de sucesso

### Validações Implementadas
- **Código Postal**: Formato obrigatório 0000-000 (formato português)
- **Campos Obrigatórios**: Código Postal, Endereço, Cidade, Distrito, Bairro
- **Duplicação**: Verifica se código postal já existe
- **Sanitização**: Limpeza de dados de entrada

## 🔧 Personalização

### Cores e Estilo
Edite as variáveis CSS no arquivo `index.php`:
```css
:root {
    --primary-color: #2c3e50;
    --secondary-color: #3498db;
    --accent-color: #e74c3c;
}
```

### Configurações da Base de Dados
Ajuste as configurações em `adicionar_codigo_postal.php`:
```php
$host = 'localhost';
$dbname = 'biblioteca_gm';
$username = 'root';
$password = '';
```

## 🐛 Solução de Problemas

### Erro de Conexão com Base de Dados
- Verifique se o MySQL está rodando no XAMPP
- Confirme as credenciais no arquivo PHP
- Verifique se a base de dados foi criada

### Formulário Não Funciona
- Verifique se o JavaScript está habilitado
- Confirme se o arquivo `adicionar_codigo_postal.php` existe
- Verifique o console do navegador para erros

### Estilos Não Carregam
- Verifique a conexão com internet
- Confirme se os CDNs do Bootstrap estão acessíveis

## 📞 Suporte

Para dúvidas ou problemas:
- Verifique os logs do Apache no XAMPP
- Consulte o console do navegador (F12)
- Verifique se todos os arquivos estão no local correto

## 🔄 Atualizações Futuras

Funcionalidades planejadas:
- Listagem de códigos postais cadastrados
- Edição e exclusão de registros
- Busca por código postal
- Relatórios de uso
- Integração com API de códigos postais portugueses

---

**Desenvolvido para a Biblioteca Escolar Ginestal Machado** 📚
