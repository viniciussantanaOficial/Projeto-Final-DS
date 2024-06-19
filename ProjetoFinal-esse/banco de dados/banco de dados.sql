DROP database ls_video;
create database ls_video;
use ls_video;

create table usuarios(
id_usuario int auto_increment primary key,
nome varchar (155),
senha varchar (45) not null,
usuario varchar (45) not null,
telefone char(15),
data_nascimento date,
cpf char(14),
email varchar(100) not null,
adm bool default false,
unique(usuario,cpf,telefone)
);

insert into usuarios(nome,senha,usuario,telefone,data_nascimento,cpf,email,adm) 
VALUES ('vinicius', '9994', 'admin', '9994', '2006-12-19', '13785179979', 'admin@gmail.com', true);


create table enderecos(
id_endereco int auto_increment primary key,
usuario_id1 int,
rua varchar(75)NOT NULL,
numero int NOT NULL,
cep char(9) NOT NULL,
complemento varchar(75)
);

alter table enderecos add constraint usuario_id1 foreign key (usuario_id1) references usuarios(id_usuario);

create table pedidos(
id_pedido int auto_increment primary key,
usuario_id2 int,
endereco_id int,
status_pagamento enum('concluido','pendente') default 'pendente',
metodo_pagamento enum('pix','debito','credito') not null,
valor_total float (8,2),
data_hora datetime
);



alter table pedidos add constraint usuario_id2 foreign key (usuario_id2) references usuarios (id_usuario);
alter table pedidos add constraint endereco_id foreign key (endereco_id) references enderecos (id_endereco);

create table produtos(
id_produto int auto_increment primary key,
categoria_id int,
nome varchar (255),
imagem longblob,
valor float (8,2)
);

create table categorias(
id_categoria int auto_increment primary key,
nome varchar(45)
);


alter table produtos add constraint categoria_id foreign key (categoria_id) references categorias (id_categoria);

create table pedidos_produtos(
id_pedido_produto int auto_increment primary key,
pedido_id int,
produto_id int,
quantidade tinyint,
preco_unitario float (8,2)
);

insert into categorias(nome) values('bebidas'),('perfumes');

alter table pedidos_produtos add constraint pedido_id foreign key (pedido_id) references pedidos (id_pedido);

alter table pedidos_produtos add constraint produto_id foreign key (produto_id) references produtos (id_produto);

create table estoque(
id_estoque int auto_increment primary key,
produto_id2 int,
quantidade_estoque int
);

-- Tabela de carrinho
CREATE TABLE carrinho (
    id_carrinho INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);

-- Tabela de produtos no carrinho
CREATE TABLE carrinho_produto (
    id_carrinho_produto INT AUTO_INCREMENT PRIMARY KEY,
    id_carrinho INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    FOREIGN KEY (id_carrinho) REFERENCES carrinho(id_carrinho),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);


alter table estoque add constraint produto_id2 foreign key (produto_id2) references produtos(id_produto);