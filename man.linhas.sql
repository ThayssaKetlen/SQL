# DELETE
DELETE FROM <nome da tabela> WHERE <atributo Pk> = <valor> -serve para apagar um alinha só

DELETE FROM <nome da tabela> WHERE <nome do atributo> = <valor> - serve para apagar varias linhas, as que tenham o valor do atributo igual

# UPDATE
UPDATE <nome da tabela> SET <nome do atributo> = <o valor entre aspas> WHERE <o id> = <o valor do id desejado> - serve para editar uma linha

OBS: vc pode alterar mais de uma linha é só acrescenatr uma virgula e o atributo com valor antes do WHERE

LIMIT 1 - ao final desse código serveria para limitar e n edita mais do q uma linha q tem o mesmo valor de atributo

# TRUNCATE
TRUNCATE <nome da tabela> - para apagar todos os dados(inclusive restartar os ids
)