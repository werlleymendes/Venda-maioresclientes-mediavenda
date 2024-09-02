/*SELECT * FROM consinco.MAXV_ABCDISTRIBBASE;*/

SELECT * 
       FROM consinco.maxv_abcdistribbase a
       JOIN consinco.map_produto b
            ON a.seqproduto = b.seqproduto
       JOIN consinco.map_familia c
            ON b.seqfamilia = c.seqfamilia
       JOIN consinco.ge_pessoa d
            ON a.seqpessoa = d.seqpessoa
