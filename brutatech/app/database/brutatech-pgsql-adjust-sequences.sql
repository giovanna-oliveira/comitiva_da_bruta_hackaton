SELECT setval('banco_id_seq', coalesce(max(id),0) + 1, false) FROM banco;
SELECT setval('cliente_id_seq', coalesce(max(id),0) + 1, false) FROM cliente;
SELECT setval('cliente_solicitacao_id_seq', coalesce(max(id),0) + 1, false) FROM cliente_solicitacao;
SELECT setval('conta_id_seq', coalesce(max(id),0) + 1, false) FROM conta;
SELECT setval('emprestimo_id_seq', coalesce(max(id),0) + 1, false) FROM emprestimo;