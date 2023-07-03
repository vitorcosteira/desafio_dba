-- Criação do banco de dados
CREATE DATABASE franquia_carros;

-- Seleção do banco de dados
USE franquia_carros;

-- Criação da tabela loja
CREATE TABLE loja (
  id INT PRIMARY KEY ,
  nome VARCHAR(50),
  endereco VARCHAR(100),
  estado VARCHAR(100)
 );

-- Criação da tabela fornecedores
CREATE TABLE fornecedores (
  id INT PRIMARY KEY,
  nome VARCHAR(50),
  endereco VARCHAR(100),
  estado VARCHAR(100)
);

-- Criação da tabela carros
CREATE TABLE carros (
  id INT PRIMARY KEY,
  id_loja INT,
  id_fornecedor INT,
  modelo VARCHAR(50),
  ano INT,
  preco DECIMAL(10,0),
  FOREIGN KEY (id_loja) REFERENCES loja(id),
  FOREIGN KEY (id_fornecedor) REFERENCES fornecedores(id)
);


-- Criação da tabela clientes
CREATE TABLE clientes (
  id INT PRIMARY KEY,
  nome VARCHAR(50),
  endereco VARCHAR(100),
  estado varchar(100)
);

-- Criação da tabela funcionários
CREATE TABLE funcionarios (
  id INT PRIMARY KEY,
  id_loja INT,
  nome VARCHAR(50),
  cargo VARCHAR(50)
  FOREIGN KEY (id_loja) REFERENCES loja(id),
);

-- Criação da tabela vendas
CREATE TABLE vendas (
  id INT PRIMARY KEY,
  id_carro INT,
  id_cliente INT,
  id_funcionario INT,
  data DATE,
  FOREIGN KEY (id_carro) REFERENCES carros(id),
  FOREIGN KEY (id_cliente) REFERENCES clientes(id),
  FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id)
);

ID, ID_carro (qual carro), ID_cliente (quem comprou), ID_funcionario (quem vendeu), data (compra)

-- Inserindo dados nas tabelas

-- Fornecedores 
Ford, Toyota, Honda, Nissan, Tesla, Subaru, BMW e Fiat

ID, Nome, Endereço, estado
Insert into fornecedores values (1,'Ford', 'Avenida Brasil 3333','Rio de Janeiro')
Insert into fornecedores values (2,'Honda', 'Rua do Invisível B','Rio de Janeiro')
Insert into fornecedores values (3,'Nissan', 'Rua do Invisível B','Rio de Janeiro')
Insert into fornecedores values (4,'Tesla', 'Rua do Visível A','Rio de Janeiro')
Insert into fornecedores values (5,'BMW', 'Rua do Vasconselo Y','Rio de Janeiro')
Insert into fornecedores values (6,'Subaru', 'Rua do Barril C','Rio de Janeiro')
Insert into fornecedores values (7,'Fiat', 'Rua da Igreja Maria da Graça','Rio de Janeiro')
Insert into fornecedores values (8,'Toyota','Rua do Joaozinho N','Rio de Janeiro')

--LOJA
ID, Nome, Endereço, estado
Insert into loja values (1,'Ford Carros LTDA','Rua Dinamite 10','Rio de Janeiro')
Insert into loja values (2,'Honda Carros LTDA','Rua com saída 11','São Paulo')
Insert into loja values (3,'Nissan Carros LTDA','Avenida Brasil 5','Minas Gerais)
Insert into loja values (4,'Tesla Carros LTDA','Avenida Rio Branco 60','São Paulo')
Insert into loja values (5,'BMW Carros LTDA','Rua Barata Ribeiro 340','Rio de Janeiro')
Insert into loja values (6,'Subaru Carros LTDA','Rua Marquês de Sapucaí55','Rio de Janeiro')
Insert into loja values (7,'Fiat Carros LTDA','Rua Senador Dantas 80','Minas Gerais')
Insert into loja values (8,'Toyota Carros LTDA','Avenida Atlântica 100','Rio de Janeiro')

--Carros
Nomes de carros: Ford Mustang, Honda Civic, Nissan Altima, Tesla Model S, Subaru Impreza, BMW Serie 3 e Fiat Uno Mille, Toyota Camry

ID, ID_loja, ID_fornecedor, modelo, ano e preço
Insert into carros values (1,1,1,'Ford Mustang',1964,499)
Insert into carros values (2,1,1,'Ford Kuga',2022,399)
Insert into carros values (3,1,1,'Ford Focus',2015,644)

Insert into carros values (4,2,2,'Honda Civic',2007,244)
Insert into carros values (5,2,2,'Honda Accord',1995,166)
Insert into carros values (6,2,2,'Honda CR-V',2011,377)

Insert into carros values (7,3,3,'Nissan Altima',2014,230)
Insert into carros values (8,3,3,'Nissan Rogue',2022,277)
Insert into carros values (9,3,3,'Nissan Maxima',1997,155)


Insert into carros values (10,4,4,'Tesla Model S',2012,830)
Insert into carros values (11,4,4,'Tesla Model Y',2023,558)
Insert into carros values (12,4,4,'Tesla Model 3',2023,466)


Insert into carros values (13,5,5,'Subaru Impreza',1993,500)
Insert into carros values (14,5,5,'Subaru Outback',1997,144)
Insert into carros values (15,5,5,'Subaru Forester',2010,422)


Insert into carros values (16,6,6,'BMW Serie 3',2015,315)
Insert into carros values (17,6,6,'BMW Série 5',2023,455)
Insert into carros values (18,6,6,'BMW X5',2023,689)


Insert into carros values (19,7,7,'Fiat Uno Mille',2013,100)
Insert into carros values (20,7,7,'Fiat Palio',2015,177)
Insert into carros values (21,7,7,'Fiat Toro',2023,160)


Insert into carros values (22,8,8,'Toyota Camry',2023,337)
Insert into carros values (23,8,8,'Toyota Corolla',2023,200)
Insert into carros values (24,8,8,'Toyota RAV4',2011,447)


--Funcionarios
ID, id_loja, Nome, cargo
Nome de funcionarios: Ana Silva, João Santos, Maria Oliveira, Pedro Souza, Beatriz Costa, Lucas Almeida, Isabela Pereira 

Insert into funcionarios values(1,1,'Ana Silva','Vendedor')
Insert into funcionarios values(2,1,'João Santos','Vendedor')
Insert into funcionarios values(3,1,'Maria Oliveira','Vendedor')

Insert into funcionarios values(4,2,'Pedro Souza','Vendedor')
Insert into funcionarios values(5,2,'Beatriz Costa','Vendedor')
Insert into funcionarios values(6,2,'Lucas Almeida','Vendedor')

Insert into funcionarios values(7,3,'Isabela Pereira','Vendedor')
Insert into funcionarios values(8,3,'Eduardo Pereira','Vendedor')
Insert into funcionarios values(9,3,'Luiza martins','Vendedor')

Insert into funcionarios values(10,4,'Leonardo Rodrigues','Vendedor')
Insert into funcionarios values(11,4,'Vitoria Costa','Vendedor')
Insert into funcionarios values(12,4,'Júlia Lima','Vendedor')

Insert into funcionarios values(13,5,'Gustavo Santos','Vendedor')
Insert into funcionarios values(14,5,'Ana Pereira','Vendedor')
Insert into funcionarios values(15,5,'Felipe Carvalho','Vendedor')

Insert into funcionarios values(16,6,'Camila Souza','Vendedor')
Insert into funcionarios values(17,6,'Thiago Gomes','Vendedor')
Insert into funcionarios values(18,6,'Beatriz Fernandes','Vendedor')

Insert into funcionarios values(19,7,'Mateus Silva','Vendedor')
Insert into funcionarios values(20,7,'Laura Rodrigues','Vendedor')
Insert into funcionarios values(21,7,'Gabriel Pereira','Vendedor')

Insert into funcionarios values(22,8,'Sofia Almeida','Vendedor')
Insert into funcionarios values(23,8,'Pedro Costa','Vendedor')
Insert into funcionarios values(24,8,'Lucas Oliveira','Vendedor')

--CLIENTES
id, nome, endereco , estado

Insert into clientes values(1,'Thiago Oliveira ','Avenida do Santos 40','Rio de Janeiro')
Insert into clientes values(2,'Felipe Pereira','Rua do sem ninguem 10','Rio de Janeiro')
Insert into clientes values(3,'Ana Rodrigues','São Alfredo Jardim 100','Rio de Janeiro')

Insert into clientes values(4,'Gustavo Almeida','Rua sem saida 20','São Paulo')
Insert into clientes values(5,'Júlia Carvalho','Vaz Lobo Jr 70','Minas Gerais')

Insert into clientes values(6,'Rafael Silva','Rua Padre Chagas 9','Sâo Paulo')
Insert into clientes values(7,'Vitoria Gomes','Avenida Faria Lima 180','Minas Gerais')
Insert into clientes values(8,'Leonardo Pereira','Rua 25 de Março 160','Minas Gerais')
Insert into clientes values(9,'Luiza Souza','Avenida Rio Branco 260','Rio de Janeiro')

Insert into clientes values(10,'Eduardo Costa','Rua Augusta 200','Sâo Paulo')
Insert into clientes values(11,'Maria Ferreira','Avenida Paulista 110','Sâo Paulo')
Insert into clientes values(12,'Beatriz Castro','Rua Santa Catarina 70','Rio de Janeiro')

Insert into clientes values(13,'Mateus Lima','Avenida Nove de Julho 50','Rio de Janeiro')

Insert into clientes values(14,'Laura Mendes','Rua 7 de Setembro 90','Minas Gerais')
Insert into clientes values(15,'Gabriel Santos','Rua Padre Chagas 10','Rio de Janeiro')
Insert into clientes values(16,'Sofia Barbosa','Avenida Rebouças 230','Sâo Paulo')

Insert into clientes values(17,'Pedro Ribeiro','Rua do Comércio 100','Rio de Janeiro')
Insert into clientes values(18,'Isabela Martins','Avenida Brasil 5550','Rio de Janeiro')
Insert into clientes values(19,'Lucas Fernandes','Avenida Atlântica 20','Sâo Paulo')

Insert into clientes values(20,'Camila Vasques','Avenida das Colinas 100','Minas Gerais')

--VENDAS

ID, ID_carro (qual carro), ID_cliente (quem comprou), ID_funcionario (quem vendeu), data (compra)

Insert into vendas values (1,1,2,1,'01-01-2023')
Insert into vendas values (2,4,4,12,'05-05-2023')
Insert into vendas values (3,7,3,9,'03-04-2023')

Insert into vendas values (4,2,1,3,'03-01-2023')
Insert into vendas values (5,3,5,2,'10-01-2023')

Insert into vendas values (6,6,7,11,'2023-06-15')
Insert into vendas values (7,8,6,7,'2023-02-11')
Insert into vendas values (8,9,8,8,'2023-06-01')
Insert into vendas values (9,13,10,14,'2023-05-01')

Insert into vendas values (10,11,9,12,'2023-04-01')
Insert into vendas values (11,10,12,10,'2023-05-03')
Insert into vendas values (12,24,13,22,'2023-06-06')

Insert into vendas values (13,20,11,19,'2023-06-02')

Insert into vendas values (14,23,16,24,'2023-06-09')
Insert into vendas values (15,19,14,20,'2023-01-09')
Insert into vendas values (16,17,15,15,'2023-01-10')

Insert into vendas values (17,18,19,16,'2023-03-22')
Insert into vendas values (18,15,20,13,'2023-04-21')
Insert into vendas values (19,12,18,10,'2023-05-25')

Insert into vendas values (20,22,17,23,'2023-06-14')

-- Relatório de vendas por automóvel

select c.modelo, COUNT(v.id) as vendas
from vendas v
inner join carros c
on v.id_carro = c.id
group by c.modelo

-- Relatório de vendas por vendedor

select f.nome, COUNT(v.id) [total de vendas], SUM(c.preco)
from vendas v
inner join funcionarios f
on v.id_funcionario = f.id
inner join carros c
on c.id = v.id_carro
group by f.nome

--Relatório de vendas por vendedor x loja

select l.nome, f.nome, COUNT(v.id) from vendas v
inner join funcionarios f
on v.id_funcionario = f.id
inner join loja l on f.id_loja = l.id
group by l.nome, f.nome
order by l.nome

-- Relatório de vendas por estado

select c.estado, COUNT(v.id) from vendas v
inner join clientes c on v.id_cliente = c.id
group by c.estado
order by c.estado 




