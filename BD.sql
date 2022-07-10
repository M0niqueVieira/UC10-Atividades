CREATE DATABASE RPGONLINEBD

USE RPGONLINEBD


GO


CREATE TABLE Usuarios 
(
UsuarioID INT PRIMARY KEY IDENTITY ,
Email VARCHAR(100) UNIQUE NOT NULL,
Senha VARCHAR(255) NOT NULL
)

CREATE TABLE Classe
(
ClasseID INT PRIMARY KEY IDENTITY ,
Nome VARCHAR(50) UNIQUE NOT NULL,
Descricao VARCHAR(255) 
)

CREATE TABLE Personagem 
(
PersonagemID INT PRIMARY KEY IDENTITY, 
NomePersonagem VARCHAR(30) UNIQUE NOT NULL,
UsuarioID INT UNIQUE FOREIGN KEY REFERENCES Usuarios(UsuarioID),
ClasseID INT FOREIGN KEY REFERENCES Classe(ClasseID)

)
CREATE TABLE Habilidade
(
HabilidadeID INT PRIMARY KEY IDENTITY ,
Email VARCHAR(100) UNIQUE NOT NULL,

)

CREATE TABLE ClasseHabilidade
(
ClasseID INT FOREIGN KEY REFERENCES Classe(ClasseID),
HabilidadeID INT FOREIGN KEY REFERENCES Habilidade(HabilidadeID)
)

GO
INSERT INTO Usuarios VALUES ('moniquev@yahoo.com.br', '1234') 
INSERT INTO Classe VALUES ('Barbaro', 'Guerreiro Furioso e brutal')
INSERT INTO Habilidade VALUES ('Lança mortal'), ('Escudo supremo'), ('Regeneracao')
INSERT INTO Personagem (NomePersonagem, UsuarioID, ClasseID) VALUES ('Majorbig', 1 , 1)
INSERT INTO ClasseHabilidade (ClasseID, HabilidadeID) VALUES (1 , 1), (1 , 2)

INSERT INTO Usuarios VALUES ('ovieira@hotmail.com', '4321') 
INSERT INTO Classe VALUES ('Monge', 'Monges são pessoas de espírito elevado')
INSERT INTO Personagem (NomePersonagem, UsuarioID, ClasseID) VALUES ('Raiuchu', 2 , 2)
INSERT INTO ClasseHabilidade (ClasseID, HabilidadeID) VALUES (2 , 1), (1 , 3)

UPDATE Usuarios
SET Senha =  '9768543' 
WHERE UsuarioID = 1

GO
SELECT * FROM Usuarios 
SELECT * FROM Classe
SELECT * FROM Habilidade
SELECT * FROM Personagem
SELECT * FROM ClasseHabilidade

SELECT * FROM Personagem
INNER JOIN Classe
ON Personagem.ClasseID = Classe.ClasseID
