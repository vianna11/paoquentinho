---UPDATE---
---Mudança de fornecedor---
UPDATE fornecedor
set nome='SEARA',contato ='seraalimentos@gmail.com',cnpj=' 14.135.689/0001-90'
where id_fornecedor = 1;

---Promoção de funcionario---
UPDATE funcionario
set funcao='Gerente'
where id_funcionario = 4;

---Mudança de Endereço do cliente---
UPDATE cliente
set endereco ='Rua josafa ,3,Lagoa RJ'
where id_cliente =39;

---Mundança do Status do pedido---
UPDATE pedido
set status='Concluído'
where id_pedido = 4;




