# Planejamento

## Objetivo

O projeto VisionCare será desenvolvido com o objetivo de aplicar boas práticas de engenharia de software e consolidar conhecimentos em programação, banco de dados e arquitetura de sistemas.

---

## Metodologia

O desenvolvimento será incremental, iniciando pela modelagem do sistema e seguindo até a implementação completa.

Cada etapa somente será iniciada após a conclusão da anterior.

---

## Tecnologias

- Linguagem: Python
- Banco de Dados: MySQL
- Interface gráfica: Django
- HTML5
- CSS3
- JavaScript
- IDE: VS Code
- Versionamento: Git
- Repositório: GitHub

---

## Organização

A documentação será criada antes da implementação.

A ordem será:

1. Requisitos
2. Casos de Uso
3. Modelagem do Banco
4. Diagrama ER
5. Arquitetura
6. Desenvolvimento
7. Testes

---

## Padrões

- Código organizado em módulos
- Separação entre interface, regras de negócio e banco de dados
- Uso de Git para versionamento
- Commits frequentes
- Nomes padronizados para arquivos, funções e variáveis


*Obervações* - futuras versões
Embora a clínica realize o processo de triagem antes da consulta, essa funcionalidade não será implementada na primeira versão do sistema. Atualmente, os dados são registrados em formulários físicos para evitar atrasos no atendimento. O módulo de triagem está previsto para uma versão futura do VisionCare.

Convênio
Particular
Retorno
Primeira consulta

## RF09 - Fechamento de Caixa
O sistema deverá permitir realizar o fechamento diário do caixa, informando valores recebidos por espécie de pagamento e disponibilizando os dados para conferência do setor financeiro.

## RF10 - Financeiro
O sistema deverá permitir controlar contas a pagar, contas a receber, despesas, recebimentos e emitir resumos financeiros.

## RF11 - Farmácia
O sistema deverá permitir controlar o estoque de medicamentos e materiais utilizados em consultas e cirurgias.

