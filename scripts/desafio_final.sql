-- Desafio Final: O Aluno Destaque Crie um único relatório para encontrar o "Aluno Destaque". 
-- Este aluno é aquele com a maior média das notas finais. 
-- A consulta deve mostrar o nome do aluno e a sua média de notas, arrendondada para duas casas decimais. 

SELECT ALUNOS.NOME_ALUNO, 
       ROUND(AVG(MATRICULAS.NOTA_FINAL), 2) AS MEDIA_GERAL
FROM ALUNOS
JOIN MATRICULAS ON ALUNOS.ID_ALUNO = MATRICULAS.ID_ALUNO
GROUP BY ALUNOS.ID_ALUNO, ALUNOS.NOME_ALUNO
ORDER BY MEDIA_GERAL DESC
LIMIT 1;
