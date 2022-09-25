CREATE TABLE banco( 
      id  INT IDENTITY    NOT NULL  , 
      nome nvarchar(max)   NOT NULL  , 
      cnpj varchar  (14)   NOT NULL  , 
 PRIMARY KEY (id)) ; 

CREATE TABLE cliente( 
      id  INT IDENTITY    NOT NULL  , 
      nome nvarchar(max)   NOT NULL  , 
      cpf varchar  (11)   NOT NULL  , 
 PRIMARY KEY (id)) ; 

CREATE TABLE cliente_solicitacao( 
      id  INT IDENTITY    NOT NULL  , 
      banco_id int   NOT NULL  , 
      cliente_id int   NOT NULL  , 
      valor float  (12,2)   NOT NULL  , 
      parcelas int  (3)   NOT NULL  , 
      data_primeiro_pg date   , 
      dia_vencimeto int  (2)   NOT NULL  , 
      data_receber date   NOT NULL  , 
 PRIMARY KEY (id)) ; 

CREATE TABLE conta( 
      id  INT IDENTITY    NOT NULL  , 
      cliente_id int   NOT NULL  , 
      banco_id int   NOT NULL  , 
      numero_conta varchar  (10)   NOT NULL  , 
 PRIMARY KEY (id)) ; 

CREATE TABLE emprestimo( 
      id  INT IDENTITY    NOT NULL  , 
      cliente_solicitacao_id int   NOT NULL  , 
      taxas float  (4,2)   NOT NULL  , 
 PRIMARY KEY (id)) ; 

 
  
 ALTER TABLE cliente_solicitacao ADD CONSTRAINT fk_cliente_solicitacao_1 FOREIGN KEY (banco_id) references banco(id); 
ALTER TABLE cliente_solicitacao ADD CONSTRAINT fk_cliente_solicitacao_2 FOREIGN KEY (cliente_id) references cliente(id); 
ALTER TABLE conta ADD CONSTRAINT fk_conta_1 FOREIGN KEY (cliente_id) references cliente(id); 
ALTER TABLE conta ADD CONSTRAINT fk_conta_2 FOREIGN KEY (banco_id) references banco(id); 
ALTER TABLE emprestimo ADD CONSTRAINT fk_emprestimo_1 FOREIGN KEY (cliente_solicitacao_id) references cliente_solicitacao(id); 

  
