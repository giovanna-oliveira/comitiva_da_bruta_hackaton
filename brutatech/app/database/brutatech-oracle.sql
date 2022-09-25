CREATE TABLE banco( 
      id number(10)    NOT NULL , 
      nome varchar(3000)    NOT NULL , 
      cnpj varchar  (14)    NOT NULL , 
 PRIMARY KEY (id)) ; 

CREATE TABLE cliente( 
      id number(10)    NOT NULL , 
      nome varchar(3000)    NOT NULL , 
      cpf varchar  (11)    NOT NULL , 
 PRIMARY KEY (id)) ; 

CREATE TABLE cliente_solicitacao( 
      id number(10)    NOT NULL , 
      banco_id number(10)    NOT NULL , 
      cliente_id number(10)    NOT NULL , 
      valor binary_double  (12,2)    NOT NULL , 
      parcelas number(10)  (3)    NOT NULL , 
      data_primeiro_pg date   , 
      dia_vencimeto number(10)  (2)    NOT NULL , 
      data_receber date    NOT NULL , 
 PRIMARY KEY (id)) ; 

CREATE TABLE conta( 
      id number(10)    NOT NULL , 
      cliente_id number(10)    NOT NULL , 
      banco_id number(10)    NOT NULL , 
      numero_conta varchar  (10)    NOT NULL , 
 PRIMARY KEY (id)) ; 

CREATE TABLE emprestimo( 
      id number(10)    NOT NULL , 
      cliente_solicitacao_id number(10)    NOT NULL , 
      taxas binary_double  (4,2)    NOT NULL , 
 PRIMARY KEY (id)) ; 

 
  
 ALTER TABLE cliente_solicitacao ADD CONSTRAINT fk_cliente_solicitacao_1 FOREIGN KEY (banco_id) references banco(id); 
ALTER TABLE cliente_solicitacao ADD CONSTRAINT fk_cliente_solicitacao_2 FOREIGN KEY (cliente_id) references cliente(id); 
ALTER TABLE conta ADD CONSTRAINT fk_conta_1 FOREIGN KEY (cliente_id) references cliente(id); 
ALTER TABLE conta ADD CONSTRAINT fk_conta_2 FOREIGN KEY (banco_id) references banco(id); 
ALTER TABLE emprestimo ADD CONSTRAINT fk_emprestimo_1 FOREIGN KEY (cliente_solicitacao_id) references cliente_solicitacao(id); 
 CREATE SEQUENCE banco_id_seq START WITH 1 INCREMENT BY 1; 

CREATE OR REPLACE TRIGGER banco_id_seq_tr 

BEFORE INSERT ON banco FOR EACH ROW 

WHEN 

(NEW.id IS NULL) 

BEGIN 

SELECT banco_id_seq.NEXTVAL INTO :NEW.id FROM DUAL; 

END;
CREATE SEQUENCE cliente_id_seq START WITH 1 INCREMENT BY 1; 

CREATE OR REPLACE TRIGGER cliente_id_seq_tr 

BEFORE INSERT ON cliente FOR EACH ROW 

WHEN 

(NEW.id IS NULL) 

BEGIN 

SELECT cliente_id_seq.NEXTVAL INTO :NEW.id FROM DUAL; 

END;
CREATE SEQUENCE cliente_solicitacao_id_seq START WITH 1 INCREMENT BY 1; 

CREATE OR REPLACE TRIGGER cliente_solicitacao_id_seq_tr 

BEFORE INSERT ON cliente_solicitacao FOR EACH ROW 

WHEN 

(NEW.id IS NULL) 

BEGIN 

SELECT cliente_solicitacao_id_seq.NEXTVAL INTO :NEW.id FROM DUAL; 

END;
CREATE SEQUENCE conta_id_seq START WITH 1 INCREMENT BY 1; 

CREATE OR REPLACE TRIGGER conta_id_seq_tr 

BEFORE INSERT ON conta FOR EACH ROW 

WHEN 

(NEW.id IS NULL) 

BEGIN 

SELECT conta_id_seq.NEXTVAL INTO :NEW.id FROM DUAL; 

END;
CREATE SEQUENCE emprestimo_id_seq START WITH 1 INCREMENT BY 1; 

CREATE OR REPLACE TRIGGER emprestimo_id_seq_tr 

BEFORE INSERT ON emprestimo FOR EACH ROW 

WHEN 

(NEW.id IS NULL) 

BEGIN 

SELECT emprestimo_id_seq.NEXTVAL INTO :NEW.id FROM DUAL; 

END;
 
  
