# Projeto HelpDesk TI — Requisitos Funcionais do Sistema

## Visão Geral
Este documento especifica os requisitos funcionais para a construção do sistema de HelpDesk TI.

## Requisitos Funcionais (RF)

### RF01 — Cadastrar Usuário
* O sistema deve permitir cadastrar um funcionário solicitando **nome**, **e-mail** e **setor**. 
* O sistema deve gerar um **ID único** para identificação.

### RF02 — Criar Chamado
* Um funcionário deve conseguir registrar um problema informando **título**, **descrição**, **categoria** e **prioridade**. 
* O sistema deve gerar automaticamente um **ID do chamado** e registrar a **data/hora de abertura**.

### RF03 — Consultar Chamados
* O sistema deve permitir visualizar a lista de todos os chamados, exibindo o **ID**, **título**, **categoria**, **prioridade**, **status**, **solicitante** e **data de abertura**.

### RF04 — Consultar Chamado Específico
* Deve ser possível buscar os detalhes completos de um chamado através do seu **ID**, exibindo todas as informações, incluindo **técnico responsável** e **data de fechamento** (se aplicável).

### RF05 — Alterar Chamado
* Deve ser possível atualizar as informações de um chamado, como reatribuir o **técnico**, alterar a **prioridade** ou atualizar o **status**.

### RF06 — Excluir Chamado
* Deve ser possível remover um registro de chamado do sistema.

### RF07 — Categorizar Chamado
* Cada chamado deve obrigatoriamente possuir uma categoria associada (Hardware, Software, Rede, Acesso, Outros).

### RF08 — Definir Prioridade
* Cada chamado deve possuir um nível de prioridade (Baixa, Média, Alta, Crítica).

### RF09 — Controlar Status e Ciclo de Vida
* O chamado deve transitar entre os status: **Aberto**, **Em atendimento**, **Resolvido** e **Fechado**. 
* Quando o chamado for encerrado, o sistema deve registrar automaticamente a **data/hora de fechamento**.