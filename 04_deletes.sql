---DELETE----

SELECT * FROM pedido
WHERE id_funcionario = 3;

DELETE FROM itempedido
WHERE id_pedido IN (
    SELECT id_pedido FROM pedido WHERE id_funcionario = 3
);

DELETE FROM pagamento
WHERE id_pedido IN (
    SELECT id_pedido FROM pedido WHERE id_funcionario = 3
);

DELETE FROM pedido
WHERE id_funcionario = 3;

DELETE FROM funcionario
WHERE id_funcionario = 3;


DELETE FROM funcionario
WHERE id_funcionario NOT IN (
    SELECT MIN(id_funcionario)
    FROM funcionario
    GROUP BY cpf
);