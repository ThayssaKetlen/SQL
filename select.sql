simbolos relacionais (=, <, >, !=, <=, >= e etc..)

SELECT * FROM <nome do tabela> - para listar todas colunas e os dados da tabela

SELECT <nome da coluna> FROM <nome da tabela> - para listar os dados da coluna escolhida de certa tabela

SELECT * from < nome da tabela> ORDER BY <coluna desejada> -serve para selecionar mostrar ordenado 

SELECT * from < nome da tabela> ORDER BY <coluna desejada> DESC - -serve para selecionar mostrar em ordem descrescente

SELECT * from < nome da tabela> ORDER BY <coluna desejada> ASC - -serve para selecionar mostrar em ordem crescente

SELECT <nome das colunas desejadas> FROM <nome da tabela> where <coluna> (simbolo relacional) <valor> order BY <coluna> - essas condições servem para afunilar ainda mais a sua query
 {ex:
SELECT idcurso, nome , ano, carga FROM cursos where ano = 2018 and carga BETWEEN 35 and 50 order by idcurso desc

SELECT * FROM cursos WHERE nome LIKE "%P%" - onde o nome tenha a letra P, esse % representa nada ou qualquer caracter

SELECT * FROM cursos WHERE nome LIKE "%_silva%"- so pessoas com silva como sobrenome
ex}

SELECT DISTINCT <nome da coluna> FROM <nome da tabela> -  serve para selecionar só um de cada dado se houver repetidos

SELECT COUNT(*) FROM <nome da tabela> where <coluna> (simbolo relacional) <valor> - serve para contar quantos daquele a tributo são iguais ao valor informado

SELECT MAX(id) FROM `pessoas` WHERE cidade != 'fortaleza'- irá selecionar o id mais alto onde as cidaes n são iguais a fortaleza

SELECT SUM(totaulas) FROM `cursos` WHERE ano = 2016 -  irá mostrar a soma dos valores da coluna onde o ano for = ao valor informado

SELECT MIN(carga) FROM `cursos` WHERE ano = 2016