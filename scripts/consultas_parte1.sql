-- 1) 
-- 2) 
-- 3) 
-- 4) 
-- 5) Filtro com AND e Ordenação: Liste o nome e a nota final de todas as matrículas do aluno ID_ALUNO = 1 e cuja NOTA_FINAL foi maior ou igual a 7.0. Ordene o resultado pela nota, da maior para menor.
SELECT ALUNOS.NOME_ALUNO, MATRICULAS.NOTA_FINAL
FROM ALUNOS, MATRICULAS
WHERE ALUNOS.ID_ALUNO = 1 AND MATRICULAS.NOTA_FINAL >= 7.0
ORDER BY MATRICULAS.NOTA_FINAL DESC 
