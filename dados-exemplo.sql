-- Dados de exemplo para a apresentação.
-- ATENÇÃO: apaga a agenda atual e coloca 8 consultas de exemplo (cachorros e gatos).
-- Os horários 5 e 8 ficam livres, para demonstrar o agendamento ao vivo.
-- Rode depois do banco.sql. Pode rodar de novo sempre que quiser voltar a este estado.
USE petshop;

-- O WHERE usa a chave primária para funcionar também com o "safe updates" do MySQL Workbench
DELETE FROM agenda WHERE horario BETWEEN 0 AND 9;

INSERT INTO agenda (horario, tipo, nome, idade, nome_dono, telefone_dono, detalhe, sintomas) VALUES
(0, 'Cachorro', 'Thor',    5,  'Ana Souza',       '(12) 98765-4321', 'Grande',     'Vacina anual (V10) e check-up geral'),
(1, 'Gato',     'Mimi',    3,  'Carlos Pereira',  '(12) 99812-3344', 'Dócil',      'Espirros frequentes e olhos lacrimejando'),
(2, 'Cachorro', 'Bob',     8,  'Juliana Lima',    '(12) 97654-1122', 'Médio',      'Mancando da pata traseira direita'),
(3, 'Gato',     'Luna',    2,  'Fernanda Alves',  '(12) 98123-5566', 'Arisca',     'Avaliação antes da castração'),
(4, 'Cachorro', 'Pipoca',  1,  'Rafael Santos',   '(12) 99234-7788', 'Pequeno',    'Primeira consulta e vermifugação'),
(6, 'Gato',     'Frajola', 6,  'Marcos Oliveira', '(12) 98345-9900', 'Brincalhão', 'Vômitos depois das refeições'),
(7, 'Cachorro', 'Mel',     11, 'Patrícia Costa',  '(12) 97456-2233', 'Médio',      'Coceira intensa e queda de pelo'),
(9, 'Gato',     'Nina',    9,  'Lucas Ribeiro',   '(12) 99567-4455', 'Medrosa',    'Perda de apetite há três dias');
