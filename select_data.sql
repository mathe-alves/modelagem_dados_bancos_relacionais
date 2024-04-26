SELECT * FROM LIVROS;

SELECT NOME_LIVRO FROM LIVROS;

SELECT ID_LIVRO AS "Código do Livro" FROM LIVROS;

SELECT * FROM LIVROS
WHERE CATEGORIA = "Biografia";

# Tabela com romances que custam menos de 48 reais
SELECT * FROM LIVROS
WHERE CATEGORIA = "ROMANCE" AND PRECO < 48.00;

# Tabela que não são nem de Luíx Vaz e nem de Gabriel Pedrosa
SELECT * FROM LIVROS
WHERE CATEGORIA = "POESIA" AND NOT
(AUTORIA = "Luís Vaz de Camões" OR AUTORIA = "Gabriel Pedrosa")
;

#Pegar dados não repetidos e ordenando
SELECT DISTINCT ID_LIVRO FROM VENDAS
WHERE ID_VENDEDOR = 1
ORDER BY ID_LIVRO;

#Deletando linha
SELECT * FROM LIVROS;
DELETE FROM LIVROS WHERE ID_LIVRO = 8;

# Desative o safe mode:
#Isso permite que você execute atualizações que não incluem uma cláusula WHERE
#logo você vai poder usar o UPDATE
SET SQL_SAFE_UPDATES = 0;

#Alterando dados
UPDATE LIVROS SET PRECO = 0.9*PRECO;
