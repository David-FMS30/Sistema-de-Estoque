Sistema de Gerenciamento de Estoque para Vidraçaria

Este projeto consiste em um software de desktop desenvolvido para automatizar e otimizar o controle de inventário de uma vidraçaria. O sistema foi criado como parte da avaliação parcial (A3) para a materia da faculdade.

O objetivo principal é substituir processos manuais por uma solução digital que ofereça maior segurança, precisão nos dados e agilidade na tomada de decisão.

---- Funcionalidades Principais ----
Controle de Acesso: Tela de login com validação de credenciais e sistema de bloqueio após tentativas excedidas.

Gestão de Produtos (CRUD): Cadastro, consulta, atualização e exclusão de itens de estoque (vidros, ferragens e alumínios).

Movimentação de Estoque: Registro de entradas e saídas com atualização automática do saldo disponível.

Gestão de Cadastros: Módulos para gerenciamento de Clientes e Fornecedores.

Relatórios Gerenciais: Geração de documentos em PDF para auditoria e conferência de estoque.

Interface Gráfica: Ambiente intuitivo desenvolvido em Java Swing.

Tecnologias Utilizadas
Linguagem: Java (JDK 23)

Arquitetura: MVC (Model-View-Controller)

Interface Gráfica: Java Swing

Banco de Dados: MySQL

Bibliotecas Adicionais:

mysql-connector-j: Driver de conexão com o banco de dados.

iTextPDF: Biblioteca para geração de relatórios.

JSON: Processamento de dados estruturados.

---- Estrutura do Projeto ----
A organização dos pacotes segue o padrão de arquitetura MVC:

src/conexao: Classes responsáveis pela lógica de conexão com o banco de dados MySQL.

src/model: Classes de entidade que representam os objetos do sistema (Produto, Cliente, Fornecedor).

src/view: Telas da interface gráfica do usuário.

src/controle: Classes intermediárias que gerenciam a lógica de negócio entre a interface e os dados.

src/imagens: Recursos visuais utilizados na composição da interface.

---- Configuração do Banco de Dados ----
Para rodar o projeto localmente, é necessário configurar o banco de dados MySQL:

Execute o script SQL_Scripts_vFinal_criacao_...sql para criar o banco db_projetoa3 e suas tabelas.

(Opcional) Execute o script SQL_Scripts_vFinal_insercao_...sql para popular o sistema com dados de teste.

Certifique-se de ajustar as credenciais de acesso no arquivo de conexão dentro do pacote conexao.