#Relação entre as tabelas Livros e Estoque
ALTER TABLE ESTOQUE ADD CONSTRAINT CE_ESTOQUE_LIVROS
FOREIGN KEY (ID_LIVRO)
REFERENCES LIVROS (ID_LIVRO)
ON DELETE NO ACTION 
ON UPDATE NO ACTION;

#O comando abaixo irá alterar a tabela Vendas (tabela filha), 
#adicionando a restrição de chave estrangeira apelidada de CE_VENDAS_LIVROS 
#que referencia a tabela Livros (tabela pai), vinculando as 
#colunas ID_LIVRO de ambas as tabelas.
#Relação entre as tabelas Vendas e Livros
ALTER TABLE VENDAS ADD CONSTRAINT CE_VENDAS_LIVROS
FOREIGN KEY (ID_LIVRO)
REFERENCES LIVROS (ID_LIVRO)
ON DELETE NO ACTION 
ON UPDATE NO ACTION;

#o padrão NO ACTION para os comandos ON DELETE e ON UPDATE, 
#a qual, de modo simplificado, significa que será gerado um erro 
#ao alterar uma nova observação na tabela filha que não exista na tabela pai.

#Relação entre as tabelas Vendedores e Vendas
ALTER TABLE VENDAS ADD CONSTRAINT CE_VENDAS_VENDEDORES
FOREIGN KEY (ID_VENDEDOR)
REFERENCES VENDEDORES (ID_VENDEDOR)
ON DELETE NO ACTION
ON UPDATE NO ACTION;
