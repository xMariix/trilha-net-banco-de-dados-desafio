SELECT * FROM Atores

SELECT * FROM ElencoFilme

SELECT * FROM Filmes

SELECT * FROM FilmesGenero

SELECT * FROM Generos


-- DESAFIO 01
SELECT 
    Nome,
	Ano
FROM Filmes

--DESAFIO 02
SELECT 
    Nome,
	Ano
FROM Filmes
ORDER BY Ano ASC

--DESAFIO 03
SELECT 
    Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Id = 28

--DESAFIO 04
SELECT 
    Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = 1997

--DESAFIO 05
SELECT 
    Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > 2000

--DESAFIO 06
SELECT 
    Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

--DESAFIO 07
SELECT 
	Ano,
	COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--DESAFIO 08
SELECT
    PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M'

--DESAFIO 09
SELECT
    PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--DESAFIO 10
SELECT
    F.Nome,
	G.Genero
FROM 
   Filmes F
INNER JOIN Generos G ON G.Genero = Genero

--DESAFIO 11
SELECT
    F.Nome,
	G.Genero
FROM 
   Filmes F
INNER JOIN Generos G ON G.Genero = Genero
WHERE Genero = 'Mistério'

--DESAFIO 12
SELECT
    F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	ElencoFilme.Papel
FROM 
   Filmes F
INNER JOIN ElencoFilme ON ElencoFilme.Papel = Papel
INNER JOIN Atores A ON A.PrimeiroNome = PrimeiroNome 
