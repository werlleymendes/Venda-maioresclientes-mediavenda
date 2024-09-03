/*SELECT * FROM consinco.MAXV_ABCDISTRIBBASE;*/

SELECT a.seqpessoa, d.nomerazao, d.fonenro1
       FROM consinco.maxv_abcdistribbase a
       JOIN consinco.map_produto b
            ON a.seqproduto = b.seqproduto
       JOIN consinco.map_familia c
            ON b.seqfamilia = c.seqfamilia
       JOIN consinco.ge_pessoa d
            ON a.seqpessoa = d.seqpessoa
       WHERE a.dtavda BETWEEN '01-aug-2023' and '31-aug-2024' AND
             a.vlritem <= 20 AND
             
             
