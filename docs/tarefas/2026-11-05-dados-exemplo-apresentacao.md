# Tarefa — dados de exemplo para a apresentação (2026-11-05)

## Skills e comandos invocados

Nenhum.

## O que foi pedido

1. Preparar o sistema para a apresentação, com pacientes cadastrados: cachorros, gatos ("animais em geral") e horários de consulta preenchidos.
2. Deixar **dois horários livres: o 5 e o 8**. O pedido falado saiu como "o 5 e o 8, Brasil". Entendi "Brasil" como "vazio" (erro do ditado por voz).
3. Deixar **o resto já preenchido**: horários 0, 1, 2, 3, 4, 6, 7 e 9.
4. "Rodar esse negócio": gravar os dados no banco deste PC e abrir o programa.

## Objetivo

Ao abrir o programa e clicar em "Ver Agenda Diária", aparecem 8 consultas (cachorros e gatos) e os horários 5 e 8 como `[Disponível]`. Assim dá para demonstrar ao vivo o agendamento nos horários livres e, depois de preencher os dois, a mensagem de agenda lotada.

## Restrições

- Não mudar o comportamento do sistema (classes Java e `banco.sql`).
- Não versionar a senha do MySQL que está, sem commit, em `ConexaoBD.java`.
- Os dados precisam respeitar os limites das colunas e da tela: nomes até 50, telefone até 20, porte/temperamento até 30, sintomas até 200, idade de 0 a 50 e `tipo` exatamente `Cachorro` ou `Gato`.

## Checklist

- [x] Conferir se o MySQL está rodando e se o banco `petshop` e a tabela `agenda` existem.
- [x] Ver o que já está na tabela antes de sobrescrever.
- [x] Criar `dados-exemplo.sql` com consultas nos horários 0–4, 6, 7 e 9, misturando cachorros e gatos.
- [x] Rodar o script no banco.
- [x] Conferir pelo próprio código (`AgendaDAO.buscarAgenda()`) que vieram 8 consultas e que os horários 5 e 8 estão livres.
- [x] Abrir o programa.
- [x] Atualizar README, documentação e `docs/PENDENCIAS.md`.

## Estado

Concluída em 2026-11-05.

- O serviço `MySQL267` estava rodando na porta 3306. O projeto compilou e conectou com as credenciais atuais do `ConexaoBD.java`.
- Antes do script, a tabela tinha 1 consulta de teste no horário 8. Ela foi salva em um backup fora do repositório (scratchpad da sessão, `backup-agenda-antes.sql`) e depois removida, porque o pedido era deixar o 8 livre.
- `dados-exemplo.sql` rodou sem erro: `DELETE` removeu 1 linha e `INSERT` gravou 8.
- A leitura pelo `AgendaDAO.buscarAgenda()` devolveu 8 consultas (cachorros em 0, 2, 4 e 7; gatos em 1, 3, 6 e 9), com os horários 5 e 8 como `[Disponível]` e os acentos corretos.
- O programa foi aberto e a janela "PetShop - Menu Principal" apareceu na tela.
- README atualizado com a seção "Dados de exemplo". `docs/PENDENCIAS.md` criado com a P-001 (senha sem commit no `ConexaoBD.java`).
- Nada foi commitado.
