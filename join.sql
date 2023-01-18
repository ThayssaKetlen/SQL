#CARDINALIDADE DE#

    1 - 1 (nâo é tão usual, porém é quando por exemplo um curso só pode ser preferido por uma pessoa e uma pessoa só pode preferir um curso)

    n - 1(muito usual, é por exemplo quando uma pessoa só pode preferir um curso mas le pode ser preferido por várias pessoas)

    n - n  (super comum, é por exemplo quando um curso pode ser assistido por muitas pessoas e as pessoas podem assistir vários cursos)

##CÓDIGOS

SELECT <nome da tablea>.<nome do atributo desejado>,<nome da tabela>.<nome do atributo desejado> FROM <nome da tabela que tem a FK> join <nomde da tabela que tem a PK> - serve para juntar as info de uma tabela com outra 
ex:
SELECT pessoas.nome, cursos.nome FROM `pessoas` join cursos - irá mostrar o nome das pessoas combinados com o nome de todos os cursos de outra tabela

SELECT <nome da tabela>.<nome do atributo desejado>,<nome da tabela>.<nome do atributo desejado> FROM <nome da tabela que tem a FK> join <nomde da tabela que tem a PK> on <nome da tabela>.<atributo de ligação> = <nome da tabela>.<atributo de ligação>
ex:
 SELECT pessoas.nome, cursos.nome FROM `pessoas` join cursos on cursos.idcurso = pessoas.cursoPreferido- irá mostrar a combinação de nome com os cursos de acordo com os ids q estão em ambas as tabelas 

'INNER JOIN É SÓ MOSTRA O Q HÁ DE COMUM NAS TABELAS'

'LEFT JOIN DÁ PREFERÊNCIA PARA TABELA DA ESQUERDA mostrando msm se n tiver a informação em comum com a outra tabela'

'RIGHT JOIN DÁ PREFERÊNCIA PARA TABELA DA DIREITA mostrando msm se n tiver a informação em comum com a outra tabela'

#JOIN COM MAIS DE UMA TABELA n para n 
ex:
SELECT p.nome, c.nome FROM assiste a JOIN cursos c on a.fkCurso = c.idcurso JOIN pessoas p on p.id = a.fkPessoa - aqui tem um join com a tabela curso e pessoa na taela assiste, e irá mostrar o nome de curso e pessoas que estâo relacionados com os id que estao na tabela assiste que existe nas outras tabelas 

SELECT p.nome, count(c.nome) from assiste a join pessoas p on p.id = a.fkPessoa JOIN cursos c on c.idcurso= a.fkCurso group by nome - podemos usar com group by tbm para mostrar quantos cursos cada pessoas está assistindo e outras várias maneiras de usar o join com várias tabelas
