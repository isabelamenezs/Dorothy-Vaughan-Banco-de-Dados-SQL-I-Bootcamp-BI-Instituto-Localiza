-- 1) Valores Únicos: Qual é a lista de departamentos únicos que oferecem cursos na universidade?
SELECT DISTINCT c.DEPARTAMENTO
FROM CURSOS c 

  -- 2) Lógica Condicional: Relatório de matrículas com STATUS
SELECT 
    ID_MATRICULA,
    CASE 
        WHEN NOTA_FINAL >= 7.0 THEN 'Aprovado'
        ELSE 'Reprovado'
    END AS STATUS
FROM MATRICULAS;

-- 3) Ordenação e Limite: Qual é o curso com o maior número de créditos? O resultado deve mostrar apenas o nome do curso e seus créditos.
SELECT * FROM CURSOS

SELECT NOME_CURSO, CURSOS.CREDITOS
FROM CURSOS
ORDER BY CREDITOS DESC LIMIT 1;
