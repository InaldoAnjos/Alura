INSERT INTO aluno (nome, 
                   cpf,
                   observacao,
                   idade,
                   mensalidade,
                   altura,
                   ativo,
                   data_nascimento,
                   hora_aula,
                   matriculado_em
                   ) 
        
        VALUES ('Inaldo Junior', 
                '08288157475',
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                33,
                198.99,
                1.86,
                TRUE,
                '1989-06-08',
                '19:30:00',
                '2022-09-24 20:00:00'
                );

SELECT * FROM aluno WHERE id = 1;

UPDATE aluno SET nome = 'Junior',
                 observacao = 'Sem observações',
                 hora_aula = '17:30:00'
             WHERE id = 1;

SELECT * FROM aluno WHERE nome = 'Junior';

DELETE FROM aluno WHERE nome = 'Junior';
