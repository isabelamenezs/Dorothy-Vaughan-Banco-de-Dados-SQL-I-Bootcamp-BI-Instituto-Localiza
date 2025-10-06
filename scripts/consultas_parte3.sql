-- 1. Contagem e Média: Calcule o número total de matrículas e a média geral de todas as notas finais.
SELECT 
    COUNT(m.ID_MATRICULA) AS Quantidade_matriculas,
    AVG(m.NOTA_FINAL) AS Media_geral_notas_finais
FROM MATRICULAS m; 

-- 2. Agrupamento: Crie um relatório que mostre quantos cursos são oferecidos por departamento. ✅
SELECT 
    DEPARTAMENTO AS "Departamento",
    COUNT(ID_CURSO) AS "Quantidade de Cursos"
FROM 
    CURSOS
GROUP BY 
    DEPARTAMENTO
ORDER BY 
    COUNT(ID_CURSO) DESC;

-- 3. Filtro de Grupo (departamentos com mais de um curso)
SELECT 
    DEPARTAMENTO AS "Departamento Responsável",
    COUNT(*) AS "Quantidade de Cursos"
FROM CURSOS
GROUP BY DEPARTAMENTO
HAVING COUNT(*) > 1;

