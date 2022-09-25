PRAGMA foreign_keys=OFF; 

CREATE TABLE banco( 
      id  INTEGER    NOT NULL  , 
      nome text   NOT NULL  , 
      cnpj varchar  (14)   NOT NULL  , 
 PRIMARY KEY (id)) ; 

CREATE TABLE cliente( 
      id  INTEGER    NOT NULL  , 
      nome text   NOT NULL  , 
      cpf varchar  (11)   NOT NULL  , 
 PRIMARY KEY (id)) ; 

CREATE TABLE cliente_solicitacao( 
      id  INTEGER    NOT NULL  , 
      banco_id int   NOT NULL  , 
      cliente_id int   NOT NULL  , 
      valor double  (12,2)   NOT NULL  , 
      parcelas int  (3)   NOT NULL  , 
      data_primeiro_pg date   , 
      dia_vencimeto int  (2)   NOT NULL  , 
      data_receber date   NOT NULL  , 
 PRIMARY KEY (id),
FOREIGN KEY(banco_id) REFERENCES banco(id),
FOREIGN KEY(cliente_id) REFERENCES cliente(id)) ; 

CREATE TABLE conta( 
      id  INTEGER    NOT NULL  , 
      cliente_id int   NOT NULL  , 
      banco_id int   NOT NULL  , 
      numero_conta varchar  (10)   NOT NULL  , 
 PRIMARY KEY (id),
FOREIGN KEY(cliente_id) REFERENCES cliente(id),
FOREIGN KEY(banco_id) REFERENCES banco(id)) ; 

CREATE TABLE emprestimo( 
      id  INTEGER    NOT NULL  , 
      cliente_solicitacao_id int   NOT NULL  , 
      taxas double  (4,2)   NOT NULL  , 
 PRIMARY KEY (id),
FOREIGN KEY(cliente_solicitacao_id) REFERENCES cliente_solicitacao(id)) ; 

 
 
  
