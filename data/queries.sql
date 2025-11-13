SELECT 
    id, 
    callid AS id_atendimento, 
    data_hora AS data_atendimento, 
    fila, 
    espera AS tempo_fila, 
    atendimento AS tempo_atendimento, 
    sentido, 
    nota2 AS nota_nps, 
    agente
FROM 
    data_test.native_chamadas_atendidas;

SELECT
    atend.id, 
    atend.id_atendimento, 
    atend.protocolo, 
    atend.data_atendimento, 
    atend.fila, 
    atend.tempo_fila, 
    atend.tempo_atendimento, 
    atend.agente,
    pesq.resposta,
    pesq.data_resposta
FROM
    data_test.smart_atendimentos AS atend
LEFT JOIN
    data_test.smart_pesquisa AS pesq
ON
    atend.id_atendimento = pesq.id_atendimento;