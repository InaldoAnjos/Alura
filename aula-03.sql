INSERT INTO aluno (nome, cpf, observacao, idade, mensalidade, altura, 
                   ativo, data_nascimento, hora_aula, matriculado_em) 
       VALUES ('Stephanny Egito', '00000000000', 'Lorem Ipsum is simply dummy text of the printing and 
                typesetting industry.', 33, 159.99, 1.65, TRUE, '1989-08-31', '19:30:00', 
                '2022-09-24 20:00:00');

ALTER TABLE aluno RENAME TO alunos;

SELECT id, nome, cpf, idade, mensalidade, altura, ativo, data_nascimento, hora_aula, matriculado_em FROM alunos;

SELECT id, nome AS "Nome do Aluno",  matriculado_em AS "Quando se Matriculou" FROM alunos;

INSERT INTO alunos (nome) VALUES ('Vinícius Dias');
INSERT INTO alunos (nome) VALUES ('Nico Steppat');
INSERT INTO alunos (nome) VALUES ('João Roberto');
INSERT INTO alunos (nome) VALUES ('Diego');

SELECT * FROM alunos WHERE nome = 'Inaldo Junior';

SELECT * FROM alunos WHERE nome <> 'Junior';

SELECT * FROM alunos WHERE nome NOT LIKE '%Junior%';

SELECT * FROM alunos WHERE nome LIKE 'Di_go';

SELECT * FROM alunos WHERE cpf IS NULL;

SELECT * FROM alunos WHERE cpf IS NOT NULL;

SELECT * FROM alunos WHERE idade BETWEEN 30 AND 35;

SELECT * FROM alunos WHERE nome LIKE '%J%' AND cpf IS NOT NULL;

SELECT * FROM alunos WHERE nome LIKE '%J%' OR nome LIKE '%Inaldo%';