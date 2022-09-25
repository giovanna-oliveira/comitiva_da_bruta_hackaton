CREATE TABLE banco( 
      id  SERIAL    NOT NULL  , 
      nome text   NOT NULL  , 
      cnpj varchar  (14)   NOT NULL  , 
 PRIMARY KEY (id)) ; 

CREATE TABLE cliente( 
      id  SERIAL    NOT NULL  , 
      nome text   NOT NULL  , 
      cpf varchar  (11)   NOT NULL  , 
 PRIMARY KEY (id)) ; 

CREATE TABLE cliente_solicitacao( 
      id  SERIAL    NOT NULL  , 
      banco_id integer   NOT NULL  , 
      cliente_id integer   NOT NULL  , 
      valor float   NOT NULL  , 
      parcelas integer   NOT NULL  , 
      data_primeiro_pg date   , 
      dia_vencimeto integer   NOT NULL  , 
      data_receber date   NOT NULL  , 
 PRIMARY KEY (id)) ; 

CREATE TABLE conta( 
      id  SERIAL    NOT NULL  , 
      cliente_id integer   NOT NULL  , 
      banco_id integer   NOT NULL  , 
      numero_conta varchar  (10)   NOT NULL  , 
 PRIMARY KEY (id)) ; 

CREATE TABLE emprestimo( 
      id  SERIAL    NOT NULL  , 
      cliente_solicitacao_id integer   NOT NULL  , 
      taxas float   NOT NULL  , 
 PRIMARY KEY (id)) ; 

 
  
 ALTER TABLE cliente_solicitacao ADD CONSTRAINT fk_cliente_solicitacao_1 FOREIGN KEY (banco_id) references banco(id); 
ALTER TABLE cliente_solicitacao ADD CONSTRAINT fk_cliente_solicitacao_2 FOREIGN KEY (cliente_id) references cliente(id); 
ALTER TABLE conta ADD CONSTRAINT fk_conta_1 FOREIGN KEY (cliente_id) references cliente(id); 
ALTER TABLE conta ADD CONSTRAINT fk_conta_2 FOREIGN KEY (banco_id) references banco(id); 
ALTER TABLE emprestimo ADD CONSTRAINT fk_emprestimo_1 FOREIGN KEY (cliente_solicitacao_id) references cliente_solicitacao(id); 

  
