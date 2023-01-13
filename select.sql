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

SELECT <nome da coluna> FROM <nome da tabela> group by <nome da coluna q colocou primeiro> - irá dar uma resultado parecido com o distinct mas tem uma diferença se vc acrescentar parâmetro
{ex:
SELECT carga, COUNT(nome) FROM cursos group by carga - que vai mostrar o agrupamento das cragas com valores iguais e mostrar a contagem de acordo com o nome

SELECT carga,COUNT(nome) FROM cursos GROUP by carga HAVING COUNT(nome) > 1 - esse vai mostrar a contagem que for maior do q 1 e do atributo nome junto com a carga
,ou seja, via mostrar a contagem de nomesque tenhamo valor da carga igual acima de 1

SELECT carga, COUNT(*) FROM cursos WHERE ano > 2016 GROUP BY carga HAVING carga > (SELECT avg(carga) FROM cursos) -  esse é bem interressante pq é o agrupamento de dois códigos sql. o ultimo diz pra ele listar somente quem estiver acima da media de carg e coloca o codigo pra contar a media de carga.
}

SELECT altura, COUNT(nome) FROM `pessoas` WHERE peso > 100 GROUP BY altura HAVING altura > (SELECT avg(altura) from pessoas) - mostra somente as pessoas que tem altura acima da media e pesam mais de 100 kg

SELECT avg(atributo) from <nome da tabela>- ele calcula a media do atributo solicitado

