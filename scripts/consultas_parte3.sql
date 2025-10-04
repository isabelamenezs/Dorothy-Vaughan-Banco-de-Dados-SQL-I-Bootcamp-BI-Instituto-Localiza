-- 1. Contagem e Média: Calcule o número total de matrículas e a média geral de todas as notas finais.


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

