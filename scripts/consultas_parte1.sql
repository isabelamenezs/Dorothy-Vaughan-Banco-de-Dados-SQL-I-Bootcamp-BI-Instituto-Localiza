-- 1) 
-- 2) 
-- 3) Filtro Numérico: Nome e os créditos de todos os cursos que valem mais de 4 créditos.
SELECT CURSOS.NOME_CURSO, CURSOS.CREDITOS
FROM CURSOS
WHERE CURSOS.CREDITOS >= 4;
-- 4) Filtro de Data: Mostre o nome e o email dos alunos que ingressaram a partir do início de 2023 (ou seja, DATA_INGRESSO maior ou igual a '2023-01- 01').
SELECT NOME_ALUNO, EMAIL FROM ALUNOS WHERE DATA_INGRESSO >= '2023-01-01';

-- 5) Filtro com AND e Ordenação: Liste o nome e a nota final de todas as matrículas do aluno ID_ALUNO = 1 e cuja NOTA_FINAL foi maior ou igual a 7.0. Ordene o resultado pela nota, da maior para menor.
SELECT ALUNOS.NOME_ALUNO, MATRICULAS.NOTA_FINAL
FROM ALUNOS, MATRICULAS
WHERE ALUNOS.ID_ALUNO = 1 AND MATRICULAS.NOTA_FINAL >= 7.0
ORDER BY MATRICULAS.NOTA_FINAL DESC 
