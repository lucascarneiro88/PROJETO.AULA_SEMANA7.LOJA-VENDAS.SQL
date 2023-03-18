CREATE DATABASE LOJA

CREATE TABLE CLIENTES(
    ID INT PRIMARY KEY,
    NOME VARCHAR(20) NOT NULL,
    CPF VARCHAR(11) UNIQUE NOT NULL,
);

CREATE TABLE TELEFONES(
    ID_CLIENTE INT REFERENCES CLIENTES(ID),
    TELEFONE VARCHAR(11)
);

CREATE TABLE ENDERECOS(
    ID_CLIENTE INT REFERENCES CLIENTES(ID),
    ENDERECO VARCHAR(50),
);

CREATE TABLE ITENS(
    ID INT PRIMARY KEY,
    PRODUTO VARCHAR(20) NOT NULL,
    DESCRICAO VARCHAR(100),
    VALOR DECIMAL
);

CREATE TABLE VENDA(
    ID INT PRIMARY KEY,
    DATA_VENDA DATETIME,
    ID_CLIENTE INT REFERENCES CLIENTES(ID)
);

CREATE TABLE VENDA_X_ITEM(
    ID_VENDA INT REFERENCES VENDA(ID),
    ID_ITEM INT REFERENCES ITENS(ID),
    QUANTIDADE INT
);

INSERT INTO CLIENTES (ID, NOME, CPF) VALUES (1,'João', '999999999'),
                                            (2,'Maria', '88888888')

INSERT INTO TELEFONES(ID_CLIENTE, TELEFONE) VALUES (1, '7777777'),
                                                    (1, '5555555'),
                                                    (2, '4444444'),
                                                    (2, '2222222')

INSERT INTO ENDERECOS(ID_CLIENTE, ENDERECO) VALUES (1, 'Rua Margarida'),
                                                    (1, 'Rua da Praia'),
                                                    (2, 'Rua das Rosas'),
                                                    (2, 'Rua dos Estudantes')

INSERT INTO ITENS(ID, PRODUTO, DESCRICAO, VALOR) VALUES (1, 'Calça','Jeans', 99.90),
                                                        (2, 'Chinelo','Tiras', 59.90),
                                                        (3, 'Camisa','Polo', 49.90),
                                                        (4, 'Camisa','Social', 89.90),
                                                        (5, 'Camiseta','Algodão', 39.90)

INSERT INTO VENDA(ID, DATA_VENDA, ID_CLIENTE) VALUES (10, 2023-03-10, 1),
                                                     (20, 2023-03-06, 2),
                                                     (30, 2023-03-02, 1)






SELECT *FROM VENDA
JOIN CLIENTES ON CLIENTES.ID = VENDA.ID_CLIENTE


SELECT*FROM VENDA
JOIN CLIENTES ON CLIENTES.ID = VENDA.ID_CLIENTE

SELECT*FROM VENDA

JOIN VENDA_X_ITEM ON VENDA_X_ITEM.ID_VENDA = ID 
JOIN CLIENTES ON VENDA.ID_CLIENTE = CLIENTES.ID

WHERE VENDA.ID=10