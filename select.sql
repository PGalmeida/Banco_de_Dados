select dsmarca from marca 
order by dsmarca;

select dsmarca from marca 
order by dsmarca desc;

select dscategoria from categoria 
order by dscategoria;

select dscategoria from categoria 
order by dscategoria desc;

select dsunidade from unidade
order by dsunidade;

select dsunidade from unidade
order by dsunidade desc;

select dsproduto from produto
order by dsproduto;

select dsproduto as Produto, preco_custo as Preço_Custo, preco_venda as Preço_Venda from produto
order by preco_venda;

select dsproduto, preco_custo, preco_venda from produto
order by dsproduto;

select produto.dsproduto, produto.idcategoria, categoria.dscategoria, produto.idmarca, marca.dsmarca, 
produto.idunidade, unidade.dsunidade
from produto, categoria, marca, unidade
 where produto.idcategoria = categoria.idcategoria and
 produto.idmarca = marca.idmarca and
 produto.idunidade = unidade.idunidade;
 
 