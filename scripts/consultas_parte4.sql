--1) Relatório de Desempenho: Nome do aluno, o nome do curso em que ele está matriculado e a sua nota final.
SELECT 
    ALUNOS.NOME_ALUNO,
    CURSOS.NOME_CURSO,
    MATRICULAS.NOTA_FINAL
FROM MATRICULAS
INNER JOIN ALUNOS
    ON MATRICULAS.ID_ALUNO = ALUNOS.ID_ALUNO
INNER JOIN CURSOS 
    ON MATRICULAS.ID_CURSO = CURSOS.ID_CURSO;

--2) Busca por alunos sem matrículas
