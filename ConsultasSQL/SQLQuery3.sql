

--CREATE TABLE Enderecos (
--         Id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
--		 IdCliente int NULL,
--		 Rua varchar(255) NULL,
--		 Bairro varchar(255) NULL,
--		 Cidade varchar(255) NULL,
--		 Estado char(2) NULL,

--		 CONSTRAINT FK_Enderecos_Clientes FOREIGN KEY(IdCliente)
--		 REFERENCES Clientes(Id)
--)

SELECT * FROM Clientes WHERE Id = 4
SELECT * FROM Enderecos WHERE IdCliente = 4

--INSERT INTO Enderecos VALUES (4, 'Rua teste', 'Bairro teste', 'Cidade teste', 'SP')


SELECT * FROM Clientes
INNER JOIN Enderecos ON Clientes.Id = Enderecos.IdCliente
WHERE Clientes.Id = 4
 
SELECT Clientes.Nome,
       CLientes.Sobrenome,
       Clientes.Email,
       Enderecos.Rua,                           
       Enderecos.Bairro,
       Enderecos.Cidade,
       Enderecos.Estado
FROM Clientes
INNER JOIN Enderecos ON Clientes.Id = Enderecos.IdCliente
WHERE Clientes.Id = 4