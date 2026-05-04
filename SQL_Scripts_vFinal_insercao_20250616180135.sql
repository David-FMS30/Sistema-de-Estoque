USE db_projetoa3;

INSERT INTO Produtos (descricao, refFab, observacoes, categoria, unidade, qtdMin, qtdMax, qtdEstoque, localizacao, desativado) VALUES
('VIDRO TEMPERADO 8MM', 'VT8-001', 'VIDRO PARA JANELAS', 'Vidros', 'M²', 10, 100, 50, 'A1C2M3N2V3', FALSE),
('VIDRO LAMINADO 10MM', 'VL10-002', 'VIDRO LAMINADO PARA PORTAS', 'Vidros', 'M²', 5, 50, 20, 'A1C3M1N1V4', FALSE),
('FERRAGEM PARA PORTA', 'FP-003', 'CONJUNTO PARA PORTA DE ALUMÍNIO', 'Ferragens', 'PC', 20, 200, 150, 'A2C1M4N3V2', FALSE),
('PARAFUSO 3X20MM', 'P320-004', 'PARAFUSO PARA FIXAÇÃO', 'Ferragens', 'PC', 100, 1000, 500, 'A2C4M2N1V5', FALSE),
('PERFIL DE ALUMÍNIO 2M', 'PA2-005', 'PERFIL PARA ESQUADRIAS', 'Aluminios', 'UN', 15, 150, 80, 'A3C2M5N2V1', FALSE),
('VIDRO FLOAT 6MM', 'VF6-006', 'VIDRO COMUM PARA JANELAS', 'Vidros', 'M²', 10, 100, 60, 'A1C1M3N3V4', FALSE),
('DOBRADIÇA INOX', 'DI-007', 'DOBRADIÇA PARA PORTAS', 'Ferragens', 'PC', 30, 300, 200, 'A2C5M1N2V3', FALSE),
('TRINCO PARA JANELA', 'TJ-008', 'TRINCO DE SEGURANÇA', 'Ferragens', 'PC', 25, 250, 120, 'A2C2M4N1V2', FALSE),
('PARAFUSO AUTOATARRAXANTE', 'PA-009', 'PARAFUSO PARA ALUMÍNIO', 'Ferragens', 'PC', 100, 1000, 600, 'A2C3M3N3V5', FALSE),
('PERFIL DE ALUMÍNIO 3M', 'PA3-010', 'PERFIL PARA ESQUADRIAS MAIORES', 'Aluminios', 'UN', 10, 100, 40, 'A3C1M2N2V4', FALSE),
('VIDRO TEMPERADO 10MM', 'VT10-011', 'VIDRO TEMPERADO PARA PORTAS', 'Vidros', 'M²', 5, 50, 30, 'A1C4M5N1V1', FALSE),
('PARAFUSO 4X30MM', 'P430-012', 'PARAFUSO PARA FIXAÇÃO REFORÇADA', 'Ferragens', 'PC', 100, 1000, 400, 'A2C1M1N3V3', FALSE),
('PERFIL DE ALUMÍNIO 1M', 'PA1-013', 'PERFIL PARA ACABAMENTOS', 'Aluminios', 'UN', 20, 200, 90, 'A3C3M4N2V2', FALSE),
('VIDRO LAMINADO 8MM', 'VL8-014', 'VIDRO LAMINADO PARA FACHADAS', 'Vidros', 'M²', 5, 50, 25, 'A1C5M2N1V5', FALSE),
('DOBRADIÇA SIMPLES', 'DS-015', 'DOBRADIÇA PARA JANELAS', 'Ferragens', 'PC', 40, 400, 220, 'A2C4M3N2V1', FALSE),
('TRINCO DE PRESSÃO', 'TP-016', 'TRINCO PARA PORTAS DE ALUMÍNIO', 'Ferragens', 'PC', 30, 300, 150, 'A2C3M5N3V4', FALSE),
('PARAFUSO 5X40MM', 'P540-017', 'PARAFUSO PARA ESTRUTURAS', 'Ferragens', 'PC', 100, 1000, 700, 'A2C2M1N1V2', FALSE),
('PERFIL DE ALUMÍNIO 4M', 'PA4-018', 'PERFIL PARA GRANDES ESTRUTURAS', 'Aluminios', 'UN', 5, 50, 20, 'A3C4M3N2V3', FALSE),
('VIDRO FLOAT 10MM', 'VF10-019', 'VIDRO COMUM PARA FACHADAS', 'Vidros', 'M²', 10, 100, 55, 'A1C1M4N3V5', FALSE),
('DOBRADIÇA REFORÇADA', 'DR-020', 'DOBRADIÇA PARA PORTAS PESADAS', 'Ferragens', 'PC', 20, 200, 100, 'A2C5M2N2V4', FALSE);

-- Inserir 3 usuários

INSERT INTO usuarios (nome, login, senha, funcao, tentativas, bloqueado) VALUES
('Carlos Almeida', 'admin', '12345', 'administrador', 0, 0),
('Lucas Ramos', 'lucas22', '123456', 'Estoquista', 0, 0),
('Mariana Souza', 'mari23', '1234567', 'Estoquista', 5, 0),
('Rafael Oliveira', 'rafa22', '12345678', 'Estoquista', 5, 0);

-- Inserir 6 Clientes (sem nomes repetidos)
INSERT INTO Clientes (razaoSocial, apelido, cpfCnpj, telefone, email, cep, endereco, bairro, numero, pais, uf, cidade, desativado) VALUES
('João Pedro Silva', NULL, '12345678000190', '75 3333-1234', 'joao.pedro@email.com', '44000-000', 'Rua das Flores', 'Bairro Jardim das Acácias', '100', 'Brasil', 'BA', 'Feira de Santana', FALSE),
('Flávia Santana', NULL, '12345678000271', '75 3333-2345', 'flavia.santana@email.com', '44000-001', 'Rua das Palmeiras', 'Bairro Vila Nova', '101', 'Brasil', 'BA', 'Feira de Santana', FALSE),
('Lucas Martins', NULL, '22345678000190', '11 3333-2234', 'lucas.martins@email.com', '01000-000', 'Av. Paulista', 'Bairro Bela Vista', '200', 'Brasil', 'SP', 'São Paulo', FALSE),
('Fernanda Lima', NULL, '22345678000271', '21 3333-3345', 'fernanda.lima@email.com', '20000-000', 'Rua das Laranjeiras', 'Bairro Botafogo', '201', 'Brasil', 'RJ', 'Rio de Janeiro', FALSE),
('Empresa Vidro Forte', 'Vidro Forte Ltda', '22345678000352', '31 3333-4456', 'contato@vidroforte.com', '30000-000', 'Rua Ouro Preto', 'Bairro Savassi', '202', 'Brasil', 'MG', 'Belo Horizonte', FALSE),
('Rodrigues Ferragens', NULL, '22345678000433', '51 3333-5567', 'rodrigues.ferragens@email.com', '90000-000', 'Av. Ipiranga', 'Bairro Moinhos de Vento', '203', 'Brasil', 'RS', 'Porto Alegre', FALSE);

-- Inserir 5 Fornecedores (sem nomes repetidos)
INSERT INTO Fornecedores (razaoSocial, apelido, cpfCnpj, telefone, email, cep, endereco, bairro, numero, pais, uf, cidade, desativado) VALUES
('AluMax', 'AluMax Alumínios Ltda', '32345678000190', '75 3333-2234', 'contato@alumax.com', '44010-000', 'Rua Alfa', 'Bairro Jardim das Acácias', '110', 'Brasil', 'BA', 'Feira de Santana', FALSE),
('Ferragens Vila Nova', 'Vila Nova Ferragens ME', '32345678000271', '75 3333-3345', 'vendas@vilanovaferragens.com', '44010-001', 'Rua Beta', 'Bairro Vila Nova', '111', 'Brasil', 'BA', 'Feira de Santana', FALSE),
('Mariana Alumínios', 'Mariana Alumínios ME', '32345678000695', '75 3333-7789', 'contato@marianaaluminios.com', '44010-005', 'Rua Épsilon', 'Bairro Santo Antônio', '115', 'Brasil', 'BA', 'Feira de Santana', FALSE),
('Lucas Alumínios', 'Lucas Alumínios ME', '42345678001190', '11 3333-2234', 'lucas.aluminios@fornecedores.com', '01010-000', 'Av. Paulista', 'Bairro Bela Vista', '210', 'Brasil', 'SP', 'São Paulo', FALSE),
('Fernanda Ferragens', 'Fernanda Ferragens ME', '42345678001271', '21 3333-3345', 'fernanda.ferragens@fornecedores.com', '20010-000', 'Rua das Laranjeiras', 'Bairro Botafogo', '211', 'Brasil', 'RJ', 'Rio de Janeiro', FALSE);

USE db_projetoa3;
-- 12 inserções de movimentações
INSERT INTO Movimentacao (tipoMovimentacao, dataMovimentacao, codProduto, qtdMovimentada, idFornecedor, idCliente, numNFe) VALUES
(1, '2025-06-01', 1, 20, 1, NULL, '1001'),
(2, '2025-06-02', 1, 5, NULL, 1, '1002'),
(1, '2025-06-11', 6, 40, 1, NULL, '1011'),
(2, '2025-06-12', 6, 15, NULL, 6, '1012');