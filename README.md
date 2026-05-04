# Stock Master - Sistema de Gerenciamento de Estoque

Sistema desenvolvido em Java para automação de inventário e controle de fluxo de mercadorias em vidraçarias.  
A aplicação utiliza o padrão arquitetural MVC, banco de dados MySQL para persistência e a biblioteca iTextPDF para geração de relatórios gerenciais.

---

## Descrição

O Stock Master foi projetado para auxiliar no gerenciamento eficiente de estoque, permitindo o controle detalhado de produtos, movimentações e relatórios.  
A solução foi estruturada com foco em organização de código, segurança e escalabilidade, seguindo boas práticas de desenvolvimento orientado a objetos.

---

## Funcionalidades

- Arquitetura baseada no padrão MVC (Model-View-Controller)
- Sistema de autenticação com controle de tentativas de acesso
- Cadastro completo de produtos, clientes e fornecedores
- Controle de estoque com definição de limites mínimo e máximo
- Registro de movimentações (entrada e saída) com histórico
- Geração de relatórios em PDF
- Interface gráfica desenvolvida com Java Swing

---

## Arquitetura do Projeto

O sistema segue uma separação em camadas para melhor manutenção e escalabilidade:

- **Model:** Representação das entidades do sistema
- **View:** Interface gráfica com o usuário
- **Controller:** Regras de negócio e controle de fluxo
- **DAO:** Acesso e manipulação dos dados no banco

---

## Estrutura de Diretórios

```plaintext
Sistema-Estoque/
├── src/
│   ├── conexao/            # Conexão com banco de dados (JDBC)
│   ├── model/              # Entidades do sistema
│   ├── controle/           # Regras de negócio e DAOs
│   ├── view/               # Interfaces gráficas
│   └── imagens/            # Recursos visuais
├── sql/
│   ├── criacao_banco.sql   # Estrutura do banco
│   └── insercao_dados.sql  # Dados iniciais
├── lib/                    # Dependências externas
├── doc/                    # Documentação técnica
└── README.md
```
## Requisitos

- Java JDK 23 ou superior  
- MySQL Server 8.0 ou superior  
- Ambiente de desenvolvimento (NetBeans, IntelliJ IDEA ou Visual Studio Code)

### Dependências utilizadas

- mysql-connector-j  
- iTextPDF  
- json  

---

## Instalação

Clone o repositório:

```bash
git clone https://github.com/seu-usuario/sistema-estoque.git
```

Adicione as bibliotecas localizadas na pasta `lib/` ao projeto por meio da IDE utilizada.

---

## Configuração do Banco de Dados

Crie o banco de dados executando o script:

```sql
sql/criacao_banco.sql
```

Insira dados iniciais (opcional):

```sql
sql/insercao_dados.sql
```

Configure as credenciais de acesso no arquivo de conexão:

```java
private static final String USER = "seu_usuario";
private static final String PASS = "sua_senha";
```

---

## Execução

A aplicação deve ser iniciada a partir da classe de login:

```bash
view.JLogin.java
```

---

## Utilização

Após iniciar o sistema:

- Realize o login com um usuário válido  
- Utilize o menu principal para acessar os módulos do sistema  
- Cadastre produtos, clientes e fornecedores  
- Registre movimentações de entrada e saída  
- Gere relatórios em PDF com base nos dados cadastrados  

---

## Considerações Técnicas

- Implementação baseada no padrão DAO para isolamento da camada de dados  
- Utilização de `PreparedStatement` para prevenção de SQL Injection  
- Organização modular para facilitar manutenção e evolução do sistema  
- Projeto desenvolvido com fins acadêmicos, aplicando conceitos de engenharia de software  
