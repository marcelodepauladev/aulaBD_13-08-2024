/* 17) SUPONDO QUE A MÉDIA PARA APROVAÇÃO SEJA 5, RELACIONE
       OS ALUNOS E AS DISCIPLINAS EM QUE ELES FORAM APROVADOS      */

USE escola;

-- Tentativa errada
-- SELECT aluno, avg(nota) média, disciplina
-- FROM boletins
-- where nota >= 5
-- group by aluno, disciplina
-- order by aluno;

SELECT aluno, avg(nota) média, disciplina
FROM boletins
-- where nota >= 5
group by aluno, disciplina
having média >= 5
-- OU having avg(notas) >= 5
order by aluno;


