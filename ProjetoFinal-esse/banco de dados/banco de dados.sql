-- Criação do banco de dados
drop database ls_video;
CREATE DATABASE ls_video;
USE ls_video;

-- Criação da tabela de usuários
CREATE TABLE usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(155),
    senha VARCHAR(45) NOT NULL,
    usuario VARCHAR(45) NOT NULL,
    telefone CHAR(15),
    data_nascimento DATE,
    cpf CHAR(14),
    email VARCHAR(100) NOT NULL,
    adm BOOL DEFAULT FALSE,
    UNIQUE(usuario, cpf, telefone)
);

-- Inserção de um usuário exemplo
INSERT INTO usuarios(nome, senha, usuario, telefone, data_nascimento, cpf, email, adm) 
VALUES ('vinicius', '9994', 'admin', '9994', '2006-12-19', '13785179979', 'admin@gmail.com', TRUE);

-- Criação da tabela de endereços
CREATE TABLE enderecos (
    id_endereco INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    rua VARCHAR(75) NOT NULL,
    numero INT NOT NULL,
    cep CHAR(9) NOT NULL,
    bairro varchar(100) not null,
    cidade varchar(50) not null,
    estado varchar(100) not null,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id_usuario)
);

-- Criação da tabela de pedidos
CREATE TABLE pedidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    endereco_id INT,
    status_pagamento ENUM('concluido', 'pendente') DEFAULT 'pendente',
    metodo_pagamento ENUM('pix', 'debito', 'credito') NOT NULL,
    valor_total FLOAT(8,2),
    data_hora DATETIME,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (endereco_id) REFERENCES enderecos(id_endereco)
);

-- Criação da tabela de categorias
CREATE TABLE categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45)
);

-- Criação da tabela de produtos
CREATE TABLE produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    categoria_id INT,
    nome VARCHAR(255),
    imagem LONGBLOB,
    descricao VARCHAR(500),
    valor FLOAT(8,2),
    quantidade VARCHAR(100),
    FOREIGN KEY (categoria_id) REFERENCES categorias(id_categoria)
);

-- Inserção de categorias exemplo
INSERT INTO categorias(nome) VALUES ('bebidas'), ('perfumes');

-- Criação da tabela de pedidos_produtos
CREATE TABLE pedidos_produtos (
    id_pedido_produto INT AUTO_INCREMENT PRIMARY KEY,
    pedido_id INT,
    produto_id INT,
    quantidade TINYINT,
    FOREIGN KEY (pedido_id) REFERENCES pedidos(id_pedido),
    FOREIGN KEY (produto_id) REFERENCES produtos(id_produto)
);

-- Criação da tabela de carrinho
CREATE TABLE carrinho (
    id_carrinho INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);