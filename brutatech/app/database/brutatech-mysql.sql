CREATE TABLE banco( 
      `id`  INT  AUTO_INCREMENT    NOT NULL  , 
      `nome` text   NOT NULL  , 
      `cnpj` varchar  (14)   NOT NULL  , 
 PRIMARY KEY (id)) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci; 

CREATE TABLE cliente( 
      `id`  INT  AUTO_INCREMENT    NOT NULL  , 
      `nome` text   NOT NULL  , 
      `cpf` varchar  (11)   NOT NULL  , 
 PRIMARY KEY (id)) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci; 

CREATE TABLE cliente_solicitacao( 
      `id`  INT  AUTO_INCREMENT    NOT NULL  , 
      `banco_id` int   NOT NULL  , 
      `cliente_id` int   NOT NULL  , 
      `valor` double   NOT NULL  , 
      `parcelas` int   NOT NULL  , 
      `data_primeiro_pg` date   , 
      `dia_vencimeto` int   NOT NULL  , 
      `data_receber` date   NOT NULL  , 
 PRIMARY KEY (id)) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci; 

CREATE TABLE conta( 
      `id`  INT  AUTO_INCREMENT    NOT NULL  , 
      `cliente_id` int   NOT NULL  , 
      `banco_id` int   NOT NULL  , 
      `numero_conta` varchar  (10)   NOT NULL  , 
 PRIMARY KEY (id)) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci; 

CREATE TABLE emprestimo( 
      `id`  INT  AUTO_INCREMENT    NOT NULL  , 
      `cliente_solicitacao_id` int   NOT NULL  , 
      `taxas` double   NOT NULL  , 
 PRIMARY KEY (id)) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci; 

 
  
 ALTER TABLE cliente_solicitacao ADD CONSTRAINT fk_cliente_solicitacao_1 FOREIGN KEY (banco_id) references banco(id); 
ALTER TABLE cliente_solicitacao ADD CONSTRAINT fk_cliente_solicitacao_2 FOREIGN KEY (cliente_id) references cliente(id); 
ALTER TABLE conta ADD CONSTRAINT fk_conta_1 FOREIGN KEY (cliente_id) references cliente(id); 
ALTER TABLE conta ADD CONSTRAINT fk_conta_2 FOREIGN KEY (banco_id) references banco(id); 
ALTER TABLE emprestimo ADD CONSTRAINT fk_emprestimo_1 FOREIGN KEY (cliente_solicitacao_id) references cliente_solicitacao(id); 

  
