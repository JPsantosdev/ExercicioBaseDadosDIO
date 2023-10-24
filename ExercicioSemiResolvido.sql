/* Query um que verifica a quantidade de filmes por nome e ano */
SELECT
	Nome, Ano
	FROM Filmes
	ORDER BY Nome
/* Query dois que ordena por ano de forma crescente */

SELECT
	Nome, Ano
	FROM Filmes
	ORDER BY Ano

/* Query Três que busca de volta para o futuro com duração , nome e ano */
SELECT
	Nome, Ano, Duracao
	FROM Filmes
	WHERE Nome LIKE '%Futuro%' OR Nome LIKE 'de volta%'
	/* A query acima também pode ser feita da seguinte forma:
	SELECT
	Nome, Ano, Duracao
	FROM Filmes
	WHERE Nome = 'De Volta Para o Futuro'*/
/* Query Quatro que busca todos os filmes de 1997 */
SELECT 
	Nome, Ano, Duracao
	FROM Filmes
	WHERE Ano = 1997

/* Query Cinco que busca todos os filmes lançados após os anos 2000 */
SELECT 
	Nome, Ano, Duracao
	FROM Filmes
	WHERE Ano > 2000
/* Query Seis que busca todos os filmes com duracao maior que cem e duracao menor que 15 em ordem crescente*/
SELECT 
	Nome, Ano, Duracao
	FROM Filmes
	WHERE Duracao > 100 AND Duracao < 160
	ORDER BY Duracao
/* Query Sete que Busca a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente */
SELECT 
	Ano, COUNT(ano) Quantidade
	FROM Filmes
	GROUP BY Ano
	ORDER BY Quantidade DESC
/* Query Oito que busca os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome */
SELECT
	PrimeiroNome, UltimoNome, Genero
	FROM Atores
	WHERE Genero = 'M'
/* Query Nove que busca os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome */
SELECT
	PrimeiroNome, UltimoNome, Genero
	FROM Atores
	WHERE Genero = 'F'
	ORDER BY PrimeiroNome
/* Queries restantes a serem completadas eventualmente.
