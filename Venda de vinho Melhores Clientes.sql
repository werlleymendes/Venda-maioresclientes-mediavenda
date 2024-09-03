SELECT * FROM consinco.MAXV_ABCDISTRIBBASE;

SELECT b.seqproduto, b.desccompleta, sum(a.qtditem)
       FROM consinco.maxv_abcdistribbase a
       JOIN consinco.map_produto b
            ON a.seqproduto = b.seqproduto
       JOIN consinco.map_familia c
            ON b.seqfamilia = c.seqfamilia
       JOIN consinco.ge_pessoa d
            ON a.seqpessoa = d.seqpessoa
       JOIN consinco.map_famdivcateg e
            ON c.seqfamilia = e.seqfamilia
       JOIN consinco.map_categoria f
            ON e.seqcategoria = f.seqcategoria
       WHERE a.dtavda BETWEEN '01-aug-2023' and '31-aug-2024' AND
             f.seqcategoria IN (select g.seqcategoria from consinco.map_categoria g
                                       where g.categoria LIKE 'VINHO%' and
                                       g.nivelhierarquia = 4
                               ) and
             f.statuscategor = 'A' and
             e.status = 'A' and
             DISTINCT(a.seqitem)
       GROUP BY b.seqproduto, b.desccompleta
       ORDER BY 3;
             
             
SELECT * FROM consinco.map_categoria o where o.categoria LIKE 'VINHO%' AND O.STATUSCATEGOR = 'A'
SELECT * FROM consinco.map_categoria o where o.seqcategoria in (2013, 2870);
