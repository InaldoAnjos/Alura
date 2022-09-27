CREATE TABLE cursos (id SERIAL PRIMARY KEY, nome VARCHAR(255));

    INSERT INTO cursos (id, nome) VALUES (1, 'Javascript');
    INSERT INTO cursos (id, nome) VALUES (1, 'HTML'); --não pode, pois o id está como PRIMARY KEY 
                                                      --Além de chave primária, ela também é única (UNIQUE)
    INSERT INTO cursos (id, nome) VALUES (2, 'HTML');


SELECT * FROM cursos;

ALTER TABLE alunos ADD PRIMARY KEY (id); -- Adiciona o atributo de PRIMARY KEY na tabela aluno e coluna ID

ALTER TABLE alunos DROP COLUMN observacao; -- Exclui a coluna observacao

CREATE TABLE aluno_curso (
    aluno_id INTEGER, 
    curso_id INTEGER, 
    PRIMARY KEY (aluno_id, curso_id),
    
    FOREIGN KEY (aluno_id)
        REFERENCES alunos (id),
    
    FOREIGN KEY (curso_id)
        REFERENCES cursos (id)   
);

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1,1); -- OK
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,1); -- OK
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1,2); -- OK 
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,2); -- OK
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (3,2); -- OK
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (4,3); -- Não é possível pois não existe o curso 3;

SELECT * FROM alunos JOIN aluno_curso ON aluno_curso.aluno_id = alunos.id
                     JOIN cursos      ON cursos.id            = aluno_curso.curso_id;



SELECT alunos.nome AS Aluno, cursos.nome AS Curso FROM alunos JOIN aluno_curso ON aluno_curso.aluno_id = alunos.id
                     JOIN cursos      ON cursos.id            = aluno_curso.curso_id;