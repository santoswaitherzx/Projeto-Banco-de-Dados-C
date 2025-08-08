SELECT 
    g.nome_genero AS 'Gênero',
    d.titulo AS 'Título',
    d.diretor AS 'Diretor',
    d.classificacao_indicativa AS 'Classificação',
    d.duracao_minutos AS 'Duração (min)'
FROM 
    DVDs d
JOIN 
    GENEROS g ON d.id_genero = g.id_genero
WHERE 
    d.disponivel = TRUE
ORDER BY 
    g.nome_genero, d.titulo;
    
    SELECT 
    a.id_aluguel AS 'Nº Aluguel',
    c.nome AS 'Cliente',
    c.telefone AS 'Telefone',
    d.titulo AS 'DVD Alugado',
    a.data_retirada AS 'Data de Retirada',
    a.data_devolucao_prevista AS 'Previsão de Devolução',
    a.valor AS 'Valor (R$)',
    DATEDIFF(a.data_devolucao_prevista, CURRENT_DATE) AS 'Dias Restantes'
FROM 
    Alugueis a
JOIN 
    Clientes c ON a.id_cliente = c.id_cliente
JOIN 
    DVDs d ON a.id_dvd = d.id_dvd
WHERE 
    a.status = 'Ativo'
ORDER BY 
    a.data_devolucao_prevista;
    
    SELECT 
    g.nome_genero AS 'Gênero',
    COUNT(a.id_aluguel) AS 'Total de Aluguéis',
    SUM(a.valor) AS 'Faturamento Total (R$)',
    AVG(a.valor) AS 'Valor Médio por Aluguel (R$)',
    MAX(a.valor) AS 'Maior Valor Cobrado (R$)'
FROM 
    Alugueis a
JOIN 
    DVDs d ON a.id_dvd = d.id_dvd
JOIN 
    GENEROS g ON d.id_genero = g.id_genero
GROUP BY 
    g.nome_genero
ORDER BY 
    COUNT(a.id_aluguel) DESC;