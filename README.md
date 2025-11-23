 Sistema de Banco de Dados – Padaria Pão Quente

Este repositório contém todos os scripts SQL utilizados na criação e manipulação do banco de dados da Padaria Pão Quente, desenvolvidos como trabalho acadêmico.



scripts/

01_create_tables.sql      
02_insert_data.sql        
03_updates.sql            
04_deletes.sql            

ecnologias Utilizadas
SQLite

Como Executar o Projeto

1. Clone o repositório
git clone https://github.com/vianna11/paoquentinho

2. Abra seu SGBD

3. Execute os scripts na seguinte ordem:

01_create_tables.sql

02_insert_data.sql

03_updates.sql

04_deletes.sql

Descrição das Tabelas

cliente – informações básicas dos clientes

funcionario – dados dos funcionários (CPF, função etc.)

fornecedor – fornecedores de itens e insumos

produto – produtos da padaria ligados a fornecedores

pedido – pedidos realizados pelos clientes

itempedido – itens pertencentes a cada pedido

pagamento – formas e valores de pagamento

Todos os relacionamentos são feitos através de chaves primárias e chaves estrangeiras

👨‍💻 Autor

Nome: Carlos Henrique dos santos vianna


