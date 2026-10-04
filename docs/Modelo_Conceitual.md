# Projeto HelpDesk TI — Modelo Conceitual

## Visão Geral
Sistema interno para registro, acompanhamento e gestão de chamados de suporte técnico de TI em uma empresa.

## Entidades Principais do Sistema
* **Usuário:** Dados do funcionário que abre a solicitação de suporte.
* **Técnico:** Dados do profissional responsável por resolver o chamado.
* **Chamado:** Requisição registrada no sistema.

## Entidades de Apoio do Sistema
* **Categorias:** Hardware, Software, Rede, Acesso, Outros.
* **Prioridades:** Baixa, Média, Alta, Crítica.
* **Status:** Aberto, Em atendimento, Resolvido, Fechado.

## 3. Relacionamentos
* *Um* **Usuário** pode abrir *vários* **Chamados** (1 : N).
* *Um* **Técnico** pode atender *vários* **Chamados** (1 : N).
* *Um* **Chamado** pertence a apenas *uma* **Categoria**, tem *uma* **Prioridade** e *um* **Status** (1 : 1).