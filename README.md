<h1>DIO | Resumo .NET e C# - Modulo 2</h1>

-> Como Manipular e usar um banco de dados com SQL.
[Digital Innovation One](https://www.dio.me/en).

## 📚 Documentação 
- [Documentação .NET](https://git-scm.com/doc)
- [Documentação C#](https://docs.github.com/pt)

## 💻 Resumos das Aulas

| Aulas | Resumos |
|-------|---------|
| Resumo sobre .NET | [Resumos]() |

->>> Módulo focado em desenvolvimento, ou seja, como manipular e usar um banco de dados.

### Banco de dados

-> Um banco de dados é uma coleção organizada de informações (ou dados) estruturadas (organizado), normalmente armazenadas eletronicamente em um sistema de computador.

-> Todo dado armazenado precisa ser organizado, ter um tipo e características para ser recuperado e manipulado posteriormente.

-> Sistema robusto que obtém, amarzena as informações de maneira inteligente, rápida e segura além de atender as requisiçÕes de todo mundo, de maneira a evitar problemas.

Exemplo de uma arquitetura de banco de dados: 
```
    API que acessa -->  banco de dados <-- Web acessa <-- Cliente acessa
                              |
                            Nuvem 
```
-> Inteligência por trás do banco, para administrar as diferentes consultas e/ou requisições sendo feitas.

-> Exemplo: em um determinado momento o sistema em nuvem quer apenas armezenar um dado, a API quer consultar uma informação, já o sistema Web quer todas as compras do cliente realizadas nos últimos 30 dias (requisição mais pesada). Para isso o banco não pode deixar que as consultas falhem, trabalho inteligente para evitar lentidão ou erros.

### Tipos de banco de dados

#### Banco de dados relacional: 

->> O tipo mais usado atualmente, armazenando dados estruturados, sendo organizado em tabelas, com colunas e linhas, que se relacionam entre si.

-> Exemplo relacionamento: tabelas Cliente, Produtos, Vendas se relacionam entre si. Esses relacionamentos facilitam a organização e a consulta dos dados.

-> Exemplos: Microsoft SQL SERVER (robusto), ORACLE DATABASE (mais robusto), MySQL (gratuito).

-> Tabelas: São dados estruturados e organizados logicamente em formato de linha e coluna.

#### Estruturado

--------------------------------------->>>Clientes<<<---------------------------------------------

| Id | Nome | Sobrenome | Email | AceitaComunicados | DataCadastro |
|----|------|-----------|-------|-------------------|--------------|
| 1 | Eduardo | Santos | email@gmail.com | 1 | 29/04/2022 |
| 1 | Peter | Anderson | email@gmail.com | 0 | 29/04/2022 |
| 1 | Leonador | Buta | email@gmail.com | 1 | 29/04/2022 |

->> Elas poderiam estar juntas em uma só tabela, mas o ideal é separar, para organização, e então relacionar os dados.

#### Principios de um banco Estruturado

->> Ao retirar uma coluna, todos os dados referentes a ela são retirados.

->> Ao definir um tipo, como no caso DataCadastro, ele não aceita outro tipo de dado a não ser dateTime.

->> Se colocar que o email não pode ser nulo, ele obrigatoriamente não poderá ser nulo.

--------------------------------------->>>Enderecos<<<---------------------------------------------

| Id | Rua | Bairro | Cidade | Estado | IdCliente (chave que aponta para outra tabela)|
|----|-----|--------|--------|--------|-----------|
| 1 | Rua 1 | Bairro 1 | Cidade 1 | Estado 1 | 1 |


#### Banco de dados não relacional:

->> banco de dados onde os dados não são armazenados em tabela, e sim armazenados de maneira não estruturadas ou semi-estruturadas.

-> Por não ter regras tão rigidaz ele consegue inserir e retornar dados numa velocidade muito maior que os bancos relacionais.

-> Por isso é muito usado em big data, mobile, situações que a performance precisa ser maior, maior flexibilidade dos dados, eslabilidade.

-> Existem vários tipos: document databases (mongoDB), key-value databases, wide-column stores, e graph databases.

-> Exmplo: MongoDB.

#### Semi estruturado (formato Json)

->> Percebe-se a ideia do semi estruturamento abaixo, Preco em um é passado como string e no outro como inteiro.

->> Uma coluna nova (Cupom) criada apenas no segundo membro.

->> Muito mais volátil.

```
[
  {
    "Id": 1,
    "Nome_Produto": "Material de escritório",
    "Preco": "25.00",
    "DataVenda": "2022-04-23T01:23:26.9666539-03:00",
    "Desconto": null
  },
  {
    "Id": 2,
    "Nome_Produto": "Licença de Software",
    "Preco": 110.00,
    "DataVenda": "2022-04-23T01:23:26.9666539-03:00",
    "Desconto": 10,
    "Cupom": "1234"
  }
]
```

### DBMS 

-> Database Management System: é um software utilizado para acessar, manipular e monitorar um sistema de banco de dados.

-> Basicamente uma maneira de entender, manipular e acessar o banco de dados, já que ele por si só não tem uma tela.

-> Maneira visual de programar, semelhante a uma IDE.

-> Cada banco tem seu próprio software: o do SQL server é SQL server management Studio por exemplo.

->> Download do SQL server, versão Express.

### A linguagem SQL

-> SQL (Structured Query Language): é a linguagem de banco de dados usada para consulta e manipulação de dados.

-> Para inserir e manipular dados vamos utilizar a linguagem SQL, que tem comandos próprios, para manipular os bancos de dados.

-> Alguns comandos:

```
       ------>>>  SQL Commands  <<<------
DDL         DCL        DML         TCL           DQL           DDL: data Definition language
Create      Grant      Insert      Commit        Select        DCL: data control language (avançado)
Drop        Revoke     Update      Rollback                    DML: data manipulation language
Alter                  Delete      Save Point                  TCL: Transaction control language (avançado)
Truncate                                                       DQL: data query language
```

-> Select: Obtém dados de uma tabela.

-> Insert: Inserir dado.

-> Update: Atualizar um dado.

-> Delete: Deletar um dado.

->>> DDL, DML E DQL serão os mais utilizados !!!.

#### DCL

-> Relacionado para controle de dados, garantir acessos a tabela a determinado usuário, ou negar esse acesso.

#### TCL

-> Controle de transações, comandos avançados para lhe dar com transações de alta importância.

-> Exemplo:  realizando uma venda precisa-se registra uma venda e gerar uma nota fiscal, mas digamos que o pagamento foi recusado, transação falhou, pode ser feito um Rollback para voltar, Commit para prosseguir com a operação e deixar os dados feitos ate então salvos ou para operações mais complexas pode ser usado um save Point para continuar de onde estava e fazer outra tentativa.

### Database

-> É uma coleção de dados estruturados, agrupados de forma concisa. É composto de tabelas, procedures, views, etc.

-> Dentro do banco de dados ele é separado por databases, dentro do banco de dados (servidor).

-> Um único servidor pode ser usado para armazenar diferentes sistemas, dividindo eles através dos databases, um agrupamento de dados, cada um com suas tabelas e referentes a contextos diferentes.

#### Abrindo servidor

-> Abrir SQL management Studio 
 
-> Abrir SQL server configuration 

-> Entrar em SQL server services e ver se está rodando o servidor, caso esteja, mudar o SQL server para ligar manualmente (se não ele estará sendo iniciado toda vez ao ligar o computador) 

-> Agora de volta ao SQL management studio, tipo de servidor (database engine)

-> Alterar server name para nome do servidor, no caso localhost\sqlexpress

-> Autenticação deixar a padrão feita pelo windows, porém se for usado um banco de dados externo (SQL server authentication) ele pedirá um login e senha.

-> Devido a versão, tive que botar opcional na encriptação.

-> Clicar botão direito em Databases e criar o banco de dados (ExemploDB).

-> LEMBRAR DE RODAR ESSAS FERRAMENTAS COMO ADMINISTRADOR !!!.

-> New query para entrar no banco de dados, notar se está no database correto (ExemploDB).

-> No meu caso por ter dois perfis, preciso lembrar que estou dentro da pasta rodando como adm, enquanto estou em outro usuário !!!.

-> Adicionar tabela clientes e rodar (script para criar uma tabela com alguns dados já).

-> Edit -> intelliSense -> Refresh local cache (para query reconhecer nova tabela)

-> Antes de aprender a como criar uma tabela, vamos aprender os tipos de dados utilizando select.

-> Lembrando que na tabela abaixo é somente exibição, há comandos para alterar.

##### IMPORTANTE: 

->>> Maneiras de executar em um banco de dados, selecionar o que de especifico você quer que seja executado, com o seleção do mouse mesmo, caso não seja feito ele irá executar todo o query o que nem sempre é o ideal.

->>> Comentários, basta utilizar Ctrl + k + c. Representação (--)

->>> Perceba que abaixo o Id não é passado, pois não é necessário (devido a criação da tabela ser um tipo IDENTITY, Id único e incremental), ele torna cada linha única, ainda que digamos o dado da linha representada pelo Id 1001 seja apagado, ele jamais botará outro dado no lugar com mesmo Id.

->>> Sempre notar para onde a query está apontando.

```
SELECT * FROM Clientes   -> seleciona todos os dados da tabela de clientes criada. 
                         -> Ctrl C pode ser utilizado para copiar os campos de dados.
                         -> O * significa todas as colunas.
SELECT Nome, Sobrenome, Email FROM Clientes -> traz só as colunas especificas.
                                            -> Raramente precisa trazer tudo, especificar só as necessárias 
                                               traz melhor perfomance.

SELECT * FROM Clientes WHERE Nome = 'Eduardo' -> outra maneira de ser feito, na mesma linha
                                                                                                 

WHERE Nome = 'Adam'      -> Precisa ser antes do ORDER BY, vai filtrar dados especificos que atendam ao pedido
                         -> Diferente do C#, no SQL precisa usar sempre aspas simples ''   

WHERE Nome = 'Adam' AND Sobrenome = 'Reynolds' -> irá filtrar o nome com essas duas características.
WHERE Nome = 'Adam' OR Sobrenome = 'Reynolds' -> irá filtrar os nomes com uma ou outra dessas características.  
WHERE AceitaComunicados = 1             -> Retornar só clientes que aceitam comunicados
WHERE Nome LIKE 'G%'                    -> LIKE para executar uma consulta com caracteres especiais,
                                           e G% para pesquisar nomes que começam com G. Qualquer coisa depois do % não importa
WHERE Nome LIKE '%G%'                   -> Qualquer coisa anterior mas que tenha letra G 
                                           no meio, e qualquer coisa posterior.                        

ORDER BY Nome            -> Ordernar pela ordem determinada (ASC de ordem crescente já é subentendido)
ORDER BY Sobrenome DESC  -> Ordenar pelo sobrenome, em ordem decrescente. 
ORDER BY Nome, Sobrenome -> Ordernar pelo nome, depois pelo sobrenome.

INSERT INTO Clientes (Nome, Sobrenome, Email, AceitaComunicados, DataCadastro) 
                                       -> Realizar uma inserção de dados, passar quais parâmetros são necessários

VALUES ('Eduardo', 'Santos', 'email@email.com', 1, GETDATE())    -> GETDATE() para pegar data atual

INSERT INTO Clientes VALUES ('Leonardo', 'Buta', 'email@email.com', 1, GETDATE()) -> Pode-se omitir os tipos

UPDATE Clientes                              -> Atualizar tabela clientes
SET Email = 'emailatualizado@email.com'      -> Mudar email para novo email
WHERE Id = 1001                              -> Apenas na linha/dado cujo Id é 1001.
                                             -> MUITA ATENÇÃO AO FAZER O UPDATE
                                             DICA ->>> fazer um select do que quer atualizar antes
SELECT * FROM Clientes WHERE Id = 1001       -> Desse jeito
                                           ->>> Update sem WHERE só pra quem é senior (risos)  

BEGIN TRAN                          -> Modo que permite desafazer as alterações
                          -> Eu esqueci de dar F5 no BEGIN TRAN e nao teve como voltar KKKKKKKKKKKKKKKKKKKKKK
                             não tive como desfazer, precisei deletar o arquivo Clientes e refazer -_-
                             isso que dá estar estudando com sono.
ROLLBACK                            -> Desfazer alterações (precisa que o BEGIN TRAN seja inicializado antes)

DELETE Clientes                     -> Deletar Clientes, caso não tenha o WHERE também vai apagar tudo, no caso a tabela.            

Where Id = 1001

```

### Tipos de dados

#### String Data Types

->> Muito importante para limitarmos a quantidade de dados representadas.

->> Exemplo: Um email não vai passar de 255 caracteres, dentro de um varchar (o n significa o número de caracteres que deve ser aceito.)

->> Não é recomendado guardar imagens

->> Mais usados e importantes: char e varchar.

->> Char: usado quando eu tenho certeza do tamanho. Ex: sigla de estados do Brasil, certeza de que tem apenas dois caracteres sempre.

->> Varchar: quando não tenho certeza do tamanho. Ex: Nome de pessoas, nome de email. Mas claro que podemos passar o tamanho como 200 caracteres máximo (para não ocupar os 8000caracteres possíveis), já que um nome de pessoa dificilmente terá mais que 200.

| Data type | Descrição | Tamanho máximo | Armazanamento |
|-----------|-----------|----------------|---------------|
| char(n) |	Fixed width character string | 8,000 characters | Defined width |
| varchar(n) | Variable width character string | 8,000 characters | 2 bytes + number of chars |
| varchar(max) | Variable width character string | 1,073,741,824 characters | 2 bytes + number of chars |
| text | Variable width character string | 2GB of text data	| 4 bytes + number of chars |
| nchar | Fixed width Unicode string | 4,000 characters	| Defined width x 2 |
| nvarchar | Variable width Unicode string | 4,000 characters |	 
| nvarchar(max)	| Variable width Unicode string	| 536,870,912 characters |	 
| ntext	| Variable width Unicode string	| 2GB of text data |	 
| binary(n)	| Fixed width binary string | 8,000 bytes	|
| varbinary	| Variable width binary string |8,000 bytes	| 
| varbinary(max) | Variable width binary string	| 2GB |	 
| image	| Variable width binary string | 2GB |	 

#### Numeric Data Types

->> Maioria dos casos vai usar o bit para representar booleanos.

->>ou o int ou bigInt para valores númericos 

->> ou o Decimal para valores monetários.

| Data type | Descrição | Armazanamento |
|-----------|-----------|---------------|
| bit | Integer that can be 0, 1, or NULL |	 
| tinyint | Allows whole numbers from 0 to 255 | 1 byte |
| smallint | Allows whole numbers between -32,768 and 32,767 | 2 bytes |
| int | Allows whole numbers between -2,147,483,648 and 2,147,483,647 | 4 bytes | 
| bigint | Allows whole numbers between -9,223,372,036,854,775,808 and 9,223,372,036,854,775,807 | 8 bytes |
| decimal(p,s) | Fixed precision and scale numbers. Allows numbers from -10^38 +1 to 10^38 –1. The p parameter indicates the maximum total number of digits that can be stored (both to the left and to the right of the decimal point). p must be a value from 1 to 38. Default is 18. The s parameter indicates the maximum number of digits stored to the right of the decimal point. s must be a value from 0 to p. Default value is 0 | 5-17 bytes |
| numeric(p,s) | Fixed precision and scale numbers. Allows numbers from -10^38 +1 to 10^38 –1. The p parameter indicates the maximum total number of digits that can be stored (both to the left and to the right of the decimal point). p must be a value from 1 to 38. Default is 18. The s parameter indicates the maximum number of digits stored to the right of the decimal point. s must be a value from 0 to p. Default value is 0 | 5-17 bytes |
| smallmoney | Monetary data from -214,748.3648 to 214,748.3647	| 4 bytes |
| money | Monetary data from -922,337,203,685,477.5808 to 922,337,203,685,477.5807 | 8 bytes |
| float(n) | Floating precision number data from -1.79E + 308 to 1.79E + 308. The n parameter indicates whether the field should hold 4 or 8 bytes. float(24) holds a 4-byte field and float(53) holds an 8-byte field. Default value of n is 53. | 4 or 8 bytes |
| real | Floating precision number data from -3.40E + 38 to 3.40E + 38 | 4 bytes |


#### Date and Time Data Types

->> Recomendado utilizar o datetime2.

| Data type | Descrição | Armazanamento |
|-----------|-----------|---------------|
| datetime | From January 1, 1753 to December 31, 9999 with an accuracy of 3.33 milliseconds | 8 bytes |
| datetime2	| From January 1, 0001 to December 31, 9999 with an accuracy of 100 nanoseconds	| 6-8 bytes |
| smalldatetime	| From January 1, 1900 to June 6, 2079 with an accuracy of 1 minute	| 4 bytes |
| date | Store a date only. From January 1, 0001 to December 31, 9999 | 3 bytes |
| time | Store a time only to an accuracy of 100 nanoseconds | 3-5 bytes |
| datetimeoffset | The same as datetime2 with the addition of a time zone offset | 8-10 bytes |
| timestamp	| Stores a unique number that gets updated every time a row gets created or modified. The timestamp value is based upon an internal clock and does not correspond to real time. Each table may have only one timestamp variable

### Criando Tabela

```
CREATE TABLE Produtos(
    Id int IDENTITY(1,1) PRIMARY KEY NOT NULL,  -> IDENTITY ele vai se incrementar e PRIMARY KEY que ele não vai se repetir                         
    Nome varchar(255) NOT NULL,                 -> NOT NULL preenchimento obrigatório
    Cor varchar(50) NULL,                       -> Quando pode ser nulo pode-se omitir o NULL ou deixa-lo
    Preco decimal(13, 2) NOT NULL,              -> passar quantidade de números e depois de casas decimais.
    Tamanho varchar(5) NULL,
    Genero char(1) NULL                         -> Representado por uma letra só (M, F ou U de unisex)
)
```

### Manipulando Dados

#### Built-in Functions

-> São funções pré-existentes que auxiliam na manipulação de dados, como por exemplo contar, somar, média, etc.

-> Podemos contar dados de uma tabela utilizando o COUNT.

```
SELECT COUNT(*) FROM Produtos     -> retornar quantidade de linhas, útil para apenas contar quantidade de linhas

SELECT COUNT(*) QuantidadeProdutos (só nomeando) FROM Produtos  -> só para saber o que você quis retornar e por um nome

SELECT COUNT(*) QuantidadeProdutos FROM Produtos WHERE Tamanho = 'M'  -> quantidade de roupas masculinas

SELECT SUM(Preco) PrecoTotal (só nomeando) FROM Produtos    -> Soma todos os produtos, retorna inteiros

SELECT SUM(Preco) PrecoTotalProdutosTamanhoM FROM Produtos WHERE Tamanho = 'M'  -> Soma todos com Tamanho M

SELECT MAX(Preco) ProdutoMaisCaro FROM Produtos   -> retornar maior valor

SELECT MIN(Preco) ProdutoMaisBaratoTamanhoM FROM Produtos WHERE Tamanho = 'M'  -> retornar menor valor de tamanho M

SELECT AVG(Preco) MediaProdutos FROM Produtos  -> AVG para tirar média dos produtos
```

#### Concatenando Colunas

```
SELECT  
    Nome + ' - ' + Cor           -> Retorna junto em uma coluna só
FROM Produtos    
```

#### Upper e Lower

```
SELECT  
    Nome + ', Cor: ' + Cor + ' ----- '  + Genero NomeProdutoCompleto,        -> Retorna junto em uma coluna só
    UPPER(Nome) Nome,                -> Passar para maiúsculo
    LOWER(Cor) Cor                 -> Passar para minúsculo
FROM Produtos  
```

#### Adicionar nova Coluna

->> Duas maneiras de serem feitas, visual ao clicar com direito na tabela produtos (tabela desejada) basta selecionar a opção design que permite manipular as colunas.

->> Também é possível nesse Design, verificar dados da tabela e ver se um campo é ou não Primary Key e ajusta-lo.

->> E por script (mais indicado devido a necessidade de saber o script), basta utilizar ALTER TABLE ADD + Tipo.

```
ALTER TABLE Produtos                  -> Altera tabela Produtos e adiciona nova coluna DataCadrastro do
ADD DataCadastro DATETIME2               tipo DATETIME2

ALTER TABLE Produtos                  -> Deletar coluna
DROP COLUMN DataCadastro

UPDATE Produtos SET DataCadastro = GETDATE()
```

#### Formatando uma Data

```
SELECT  
    Nome + ', Cor: ' + Cor + ' ----- '  + Genero NomeProdutoCompleto,        
    UPPER(Nome) Nome,                
    LOWER(Cor) Cor,
	FORMAT (DataCadastro, 'dd/MM/yyyy HH:mm') Data   -> Comandos iguais do C#
FROM Produtos 
```

#### Agrupando Dados Iguais

```
SELECT Tamanho, COUNT(*) quantidade
FROM Produtos 
GROUP BY Tamanho             -> Agrupar pelo desejado, precisa passar o COUNT e o grupo desejado(Tamanho) acima

SELECT Tamanho, COUNT(*) quantidade
FROM Produtos 
WHERE Tamanho <> ''          -> Caso não queira retornar nenhum vazio, no caso de um boné sem tamanho. Fazer isto
GROUP BY Tamanho                antes do GROUP BY  ( o sinal poderia ser != que também funcionaria)

SELECT Tamanho, COUNT(*) quantidade
FROM Produtos 
WHERE Tamanho <> ''
GROUP BY Tamanho
ORDER BY Quantidade DESC     -> Ordenando
```

#### Primary Key e Foreign Key

-> Chave primária e chave estrangeira.

-> Chave primária: chave única que identifica cada registro na tabela. Ex: Id dos exemplos acima, devido a como foi criado (IDENTITY(1,1) PRIMARY KEY NOT NULL).

-> Chave estrangeira: chave que identifica um registro existente em outra tabela.

-> Um cliente com Id = 50 pode ter um endereço com Id= 120, através da chave estrangeira, ou seja, seria necessário um IdCliente (chave estrangeira) dentro da tabela endereços, e esse sim apontaria para o Id = 50 do cliente.

Criando Tabela Enderecos
```
CREATE TABLE Enderecos (
     Id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
		 IdCliente int NULL,
		 Rua varchar(255) NULL,
		 Bairro varchar(255) NULL,
		 Cidade varchar(255) NULL,
		 Estado char(2) NULL,

		 CONSTRAINT FK_Enderecos_Clientes FOREIGN KEY(IdCliente)  -> Para fazer apontamento a chave de clientes
		 REFERENCES Clientes(Id)                                     CONSTRAIN de restrito da relação da coluna  
                                                                 IdCliente para com Id da tabela Clientes.
                                                                FK_Enderecos_Clientes pode ser qualquer nome.
)                                
```

#### Realizando um JOIN

-> Para trazer a informação completa das tabelas relacionadas, usaremos o INNER JOIN (maneira mais comum)

-> Existem vários JOIN, SQL JOINS estudar caso necessário.

```
SELECT * FROM Clientes
INNER JOIN Enderecos ON Clientes.Id = Enderecos.IdCliente  -> junção das tabelas baseado em uma condição
WHERE Clientes.Id = 4                                         no caso o WHERE.


SELECT Clientes.Nome,
       CLientes.Sobrenome,
       Clientes.Email,                            -> Refinando busca
       Enderecos.Rua,                           
       Enderecos.Bairro,
       Enderecos.Cidade,
       Enderecos.Estado
FROM Clientes
INNER JOIN Enderecos ON Clientes.Id = Enderecos.IdCliente
WHERE Clientes.Id = 4


SELECT C.Nome,
       C.Sobrenome,
       C.Email,
       E.Rua,                           
       E.Bairro,                 -> Enxutando o nome Clientes e Endrecos apenas para facilitar a escrita
       E.Cidade,
       E.Estado
FROM Clientes C
INNER JOIN Enderecos E ON C.Id = E.IdCliente
WHERE C.Id = 4
```











