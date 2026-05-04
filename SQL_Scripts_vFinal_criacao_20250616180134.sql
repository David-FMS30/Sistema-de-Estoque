-- DROP DATABASE db_projetoa3; -- para testes

-- Cria o banco de dados
CREATE DATABASE IF NOT EXISTS db_projetoa3;
USE db_projetoa3;

-- Tabela Produtos
CREATE TABLE Produtos (
    id_codproduto INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(60) NOT NULL,
    refFab VARCHAR(100),
    observacoes TEXT,
    categoria VARCHAR(100),
    unidade VARCHAR(100),
    qtdMin INT,
    qtdMax INT,
    qtdEstoque INT,
    localizacao VARCHAR(10),
    desativado BOOLEAN
);

-- Tabela Usuarios
CREATE TABLE usuarios (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nome varchar(60) NOT NULL,
  login varchar(20) NOT NULL,
  senha varchar(20) NOT NULL,
  funcao varchar(30) DEFAULT NULL,
  tentativas INT DEFAULT 0,-- antes (tentativas int(11) DEFAULT 0,) está dando problema
  bloqueado Boolean
);


-- Tabela Clientes
CREATE TABLE Clientes (
    idCliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    razaoSocial VARCHAR(70) NOT NULL,
    apelido VARCHAR(70),
    cpfCnpj VARCHAR(20) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(70),
    cep VARCHAR(10),
    endereco VARCHAR(100),
    bairro VARCHAR(50),
    numero VARCHAR(10),
    pais VARCHAR(50),
    uf VARCHAR(2),
    cidade VARCHAR(50),
    desativado BOOLEAN 
);

-- Tabela Fornecedores
CREATE TABLE Fornecedores (
    idFornecedor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    razaoSocial VARCHAR(70) NOT NULL,
    apelido VARCHAR(70),
    cpfCnpj VARCHAR(20) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(70),
    cep VARCHAR(10),
    endereco VARCHAR(100),
    bairro VARCHAR(50),
    numero VARCHAR(10),
    pais VARCHAR(50),
    uf VARCHAR(2),
    cidade VARCHAR(50),
    desativado BOOLEAN
);

-- Tabela Movimentacao
CREATE TABLE Movimentacao (
    idMovimentacao INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    
    tipoMovimentacao TINYINT NOT NULL COMMENT '1 = entrada, 2 = saída',
    dataMovimentacao DATE NOT NULL,
    codProduto INT NOT NULL,
    qtdMovimentada INT NOT NULL,
    idFornecedor INT NULL,
    idCliente INT NULL,
    numNFe VARCHAR(50) NOT NULL,
    
    CONSTRAINT fk_produto FOREIGN KEY (codProduto) REFERENCES Produtos(id_codproduto),
    CONSTRAINT fk_fornecedor FOREIGN KEY (idFornecedor) REFERENCES Fornecedores(idFornecedor),
    CONSTRAINT fk_cliente FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente)
);