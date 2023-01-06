CREATE DATABASE < nome do database > -para criar um banco de dados

-para criar tabela (a primeira coluna precisa ser a PK da tabela)
CREATE TABLE <nome da tabela> 
(
    <nome da coluna> tipo de dado
    ex:
    id_tabela int PRIMARY KEY AUTO_INCREMENT,
    ex:
    nacionalidade varchar(20) default 'brasil'- caso n seja preenchido sera acrescenatdo o valor default
)