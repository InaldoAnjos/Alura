SELECT * FROM alunos;

SELECT * FROM aluno_curso;

SELECT * FROM cursos;

DROP TABLE aluno_curso;

CREATE TABLE aluno_curso (aluno_id INTEGER, curso_id INTEGER, 
                                    PRIMARY KEY (aluno_id, curso_id),
                                    FOREIGN KEY (aluno_id) REFERENCES alunos (id)
                                    ON DELETE CASCADE,
                                    
                                    FOREIGN KEY (curso_id) REFERENCES cursos (id));

DELETE FROM alunos WHERE id = 1;