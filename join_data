#Depois que os dados forem inseridos
SET FOREIGN_KEY_CHECKS = 1;

#para esse código funcionar, eu preciso dizer que eu tenho uma agregação, 
#um agrupamento. E esse comando é o GROUP BY, porque o SQL precisa saber 
#que você quer somar, mas a partir de um campo específico. 
#Então, eu vou querer somar, mas agrupando pelo código de vendedores, 
#então GROUP BY VENDAS.ID_VENDEDOR.
SELECT VENDAS.ID_VENDEDOR, VENDEDORES.NOME_VENDEDOR, SUM(VENDAS.QTD_VENDIDA)
FROM VENDAS, VENDEDORES
WHERE VENDAS.ID_VENDEDOR = VENDEDORES.ID_VENDEDOR
GROUP BY VENDAS.ID_VENDEDOR;

#FORMA 1 - Sem a renomeação
SELECT LIVROS.NOME_LIVRO, VENDAS.QTD_VENDIDA
FROM LIVROS,  VENDAS
WHERE VENDAS.ID_LIVRO = LIVROS.ID_LIVRO;

#FORMA 2 - Com a renomeação
SELECT A.NOME_LIVRO, B.QTD_VENDIDA
FROM LIVROS AS  A,  VENDAS AS  B
WHERE B.ID_LIVRO = A.ID_LIVRO;

#FORMA 3 - Com a renomeação, mas sem o 'AS'
SELECT A.NOME_LIVRO, B.QTD_VENDIDA
FROM LIVROS  A,  VENDAS   B
WHERE B.ID_LIVRO = A.ID_LIVRO;

#Se tiver um vendedor diferente em algumas da tabelas, não vai aparecer
SELECT VENDAS.ID_VENDEDOR, VENDEDORES.NOME_VENDEDOR, SUM(VENDAS.QTD_VENDIDA)
FROM VENDAS INNER JOIN VENDEDORES
ON VENDAS.ID_VENDEDOR = VENDEDORES.ID_VENDEDOR
GROUP BY VENDAS.ID_VENDEDOR;

#Será que todos os livros da base de dados foram vendidos?
SELECT LIVROS.NOME_LIVRO, VENDAS.QTD_VENDIDA
#mantenha todos os livros da tabela “Livros”, e procure na tabela “Vendas”
FROM LIVROS LEFT JOIN VENDAS
#declarar o campo que faz relação entre essas duas tabelas, “Livros” e “Vendas”
ON LIVROS.ID_LIVRO = VENDAS.ID_LIVRO
WHERE VENDAS.QTD_VENDIDA IS NULL;

#Será que todos os livros da base de dados foram vendidos?
SELECT VENDAS.ID_LIVRO, LIVROS.NOME_LIVRO, VENDAS.QTD_VENDIDA
FROM LIVROS RIGHT JOIN VENDAS
ON LIVROS.ID_LIVRO = VENDAS.ID_LIVRO;
