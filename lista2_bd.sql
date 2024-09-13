USE db_ecommerce_exam;
USE db_financas_exam;
USE db_crm_exam;
USE db_prontuario_exam;
 
/*
SELECT ip.item_pedido_id, ip.pedido_id, p.nome AS produto_nome, ip.quantidade, ip.preco_unitario
FROM itens_pedido ip
INNER JOIN produtos p
ON ip.produto_id = p.produto_id;
*/

/*
SELECT pedidos.pedido_id, pedidos.data_pedido, pedidos.total, clientes.nome AS cliente_nome,clientes.email AS cliente_email
FROM 
    pedidos
INNER JOIN 
    clientes ON pedidos.cliente_id = clientes.cliente_id;
*/

/*
SELECT 
    clientes.cliente_id,
    clientes.nome AS cliente_nome,
    clientes.email AS cliente_email,
    interacoes.interacao_id,
    interacoes.tipo AS interacao_tipo,
    interacoes.detalhes AS interacao_detalhes,
    interacoes.data_interacao
FROM 
    clientes
LEFT JOIN 
    interacoes ON clientes.cliente_id = interacoes.cliente_id;
*/

/*
SELECT 
    t.transacao_id,
    t.conta_id,
    t.tipo AS tipo_transacao,
    t.valor,
    t.data_transacao,
    t.descricao,
    o.categoria AS categoria_orcamento
FROM 
    transacoes t
LEFT JOIN 
    orcamentos o ON t.conta_id = o.orcamento_id;
*/

/*
SELECT 
    c.nome AS cliente_nome,
    c.email AS cliente_email,
    ca.nome AS campanha_nome,
    ca.descricao AS campanha_descricao,
    pc.data_participacao
FROM 
    participacoes_campanha pc
INNER JOIN 
    clientes c ON pc.cliente_id = c.cliente_id
INNER JOIN 
    campanhas ca ON pc.campanha_id = ca.campanha_id;
*/

/*
SELECT 
    p.paciente_id,
    p.nome AS paciente_nome,
    p.data_nascimento,
    p.sexo,
    p.telefone,
    p.endereco,
    pr.prontuario_id,
    pr.data_consulta,
    pr.medico,
    pr.diagnostico,
    pr.prescricao,
    pr.observacoes
FROM 
    pacientes p
LEFT JOIN 
    prontuarios pr ON p.paciente_id = pr.paciente_id;
*/

SELECT 
    p.pedido_id,
    c.nome AS cliente_nome,
    p.total AS total_pedido,
    i.quantidade,
    pr.nome AS produto_nome,
    i.preco_unitario
FROM 
    pedidos p
INNER JOIN 
    clientes c ON p.cliente_id = c.cliente_id
INNER JOIN 
    itens_pedido i ON p.pedido_id = i.pedido_id
INNER JOIN 
    produtos pr ON i.produto_id = pr.produto_id
ORDER BY 
    p.pedido_id;