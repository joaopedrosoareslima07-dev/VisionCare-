# Casos de Uso

## Objetivo

Este documento descreve os casos de uso do sistema VisionCare, apresentando as funcionalidades disponíveis para cada ator e como eles interagem com o sistema.

---

## Atores

- Gerente
- Auxiliar Administrativo
- Recepcionista
- Profissional de Triagem
- Médico
---

## Lista de Casos de Uso

| Código | Caso de Uso | Ator |
|--------|-------------|------|
| UC01 | Realizar Login | Todos os usuários |
| UC02 | Cadastrar Paciente | Recepcionista | Gerente 
| UC03 | Consultar Paciente |  Médico |
| UC04 | Editar Paciente | Recepcionista, Gerente |
| UC05 | Excluir Paciente |  Gerente  |
| UC06 | Agendar Consulta | Recepcionista |
| UC07 | Cancelar Consulta | Recepcionista |
| UC08 | Registrar Prontuário | Médico |
| UC09 | Registrar Exame | Médico, Proficional de Triagem |
| UC10 | Emitir Relatórios | Todos os usuários |

---

## Descrição dos Casos de Uso

### UC01 – Realizar Login

**Objetivo:** Permitir que um usuário autenticado acesse o sistema.

**Atores:** Todos.

**Pré-condições:**
  O usuário deve possuir um cadastro ativo.

**Fluxo Principal:**
 O usuário informa usuário e senha.
 O sistema valida as credenciais.
 O sistema concede acesso conforme o perfil do usuário.

**Fluxos Alternativos:**
 Credenciais inválidas: o sistema informa o erro e solicita nova tentativa.

**Pós-condições:**
 O usuário acessa o sistema.

---

### UC02 - Cadastrar paciente 

**Objetivo** - Cadastrar um novo paciente no sistema utilizando as informações fornecidas.
**Atores** Recepcionista, Gerente e Aux Administrador 
*Pré-condiçoes* - O usuário deverá possuir um login 
*Fluxo Principal* 
O usuário acessa a tela de cadastro.
O sistema solicita os dados do paciente.
O usuário preenche as informações obrigatórias.
O sistema valida os dados.
O sistema salva o cadastro.
O sistema confirma o cadastro realizado.
*Fluxos Alternativos*
Algum campo obrigatório não foi preenchido: o sistema informa o erro e solicita a correção.
O paciente já possui cadastro: o sistema informa que já existe um registro.
*Pós-Condições*
O paciente é cadastrado e fica disponível para consultas e agendamentos.


### UC03 - Consultar paciente 

**Objetivo** -Registrar a consulta médica e armazenar as informações no prontuário do paciente.
**Atores** Médico
*Pré-condiçoes* - O usuário deverá possuir um login e o paciente deverá ter um cadastro 
*Fluxo Principal* 
 O médico acessa a tela de consulta.
 O médico pesquisa o paciente.
 O sistema exibe os dados do paciente.
 O médico registra as informações da consulta.
 O sistema salva as informações no prontuário.
*Fluxos Alternativos*
O paciente não possui cadastro: o sistema informa que o paciente não foi encontrado.
Algum campo obrigatório não foi preenchido: o sistema solicita a correção.
*Pós-Condições*
o médico registra a consulta e, se necessário, solicita exames.



### UC04 - Editar Paciente

**Objetivo:** Atualizar as informações cadastrais de um paciente.

**Atores:** Gerente, Recepcionista.

**Pré-condições:**
  O usuário deve estar autenticado.
  O paciente deve possuir cadastro no sistema.

**Fluxo Principal:**
 O usuário acessa a tela de cadastro de pacientes.
 O usuário pesquisa o paciente.
 O sistema exibe os dados do paciente.
 O usuário seleciona a opção "Editar".
 O usuário altera as informações necessárias.
 O sistema valida os dados.
 O sistema salva as alterações.
 O sistema confirma a atualização do cadastro.

**Fluxos Alternativos:**
 O paciente não possui cadastro: o sistema informa que o paciente não foi encontrado.
 Algum campo obrigatório não foi preenchido: o sistema solicita a correção.

**Pós-condições:**
 As informações do paciente são atualizadas no sistema.


 ### UC05 - Inativar paciente

**Objetivo:** Inativar registro de um paciente.

**Atores:** Gerente.

**Pré-condições:**
  O usuário deve estar autenticado.
  O paciente deve possuir cadastro no sistema.

**Fluxo Principal:**
 O usuário acessa a tela de pacientes cadastrado.
 O usuário pesquisa o paciente.
 O sistema exibe os dados do paciente.
 O usuário seleciona a opção "Inativar".
 O sistema verifica se o usuário possui permissão para inativar pacientes.
 O sistema solicita a confirmação da exclusão.
 O usuário confirma a operação.
 O sistema deixa o cadastro inativo.
**Fluxos Alternativos:**
 O paciente não possui cadastro: o sistema informa que o paciente não foi encontrado.
 Algum campo obrigatório não foi preenchido: o sistema solicita a correção
 Senha incorreta: o sistema solicita correção
 O usuário não possui permissão para inativar pacientes: o sistema exibe uma mensagem de acesso negado.

**Pós-condições:**
 As informações do paciente ficam inativas no sistema.

 ### UC06 - Agendar consulta

**Objetivo:** Agendar consulta de um paciente.

**Atores:** Recepcionista
**Pré-condições:**
  O usuário deve estar autenticado.
  O paciente deve possuir cadastro no sistema.
  O médico deve possuir horário disponível na agenda.

**Fluxo Principal:**
 O usuário acessa a tela de consultas.
 O usuário seleciona a opção "Nova Consulta".
 O usuário pesquisa o paciente.
 O sistema exibe os dados do paciente.
 O usuário seleciona a data e o horário.
 O sistema verifica a disponibilidade do médico.
 O sistema solicita a confirmação do agendamento.
 O usuário confirma a operação.
 O sistema registra a consulta.
**Fluxos Alternativos:**
 O paciente não possui cadastro: o sistema informa que o paciente não foi encontrado.
 Algum campo obrigatório não foi preenchido: o sistema solicita a correção
 O médico está com a agenda cheia: O siistema exibe uma mensagem de erro
 O usuário não possui permissão para agendar consultas: o sistema exibe uma mensagem de acesso negado.
 Já existe uma consulta marcada para esse horário: o sistema informa o conflito e solicita outro horário.
**Pós-condições:**
 A consulta foi marcada.



 ### UC07 - Cancelar consulta

**Objetivo:** Cancelar consulta de um paciente.

**Atores:** Recepcionista
**Pré-condições:**
  O usuário deve estar autenticado.
  O paciente deve possuir cadastro no sistema.
  O paciente deverá possuir uma consulta marcada

**Fluxo Principal:**
 O usuário acessa a tela de consultas.
 O usuário pesquisa o paciente.
 O sistema exibe os dados do paciente.
 O sistema informa a data e o horário.
 O usuário clica em "Desmarcar consulta"
 O usuário confirma a operação.
 O sistema cancela a consulta.
**Fluxos Alternativos:**
 O paciente não possui cadastro: o sistema informa que o paciente não foi encontrado.
 Algum campo obrigatório não foi preenchido: o sistema solicita a correção
 O paciente não possui consulta agendada: o sistema exibe mensagem de erro
 **Pós-condições:**
A consulta é removida da agenda do médico e o horário fica disponível para um novo agendamento.

  ### UC08 - Registrar prontuário


**Objetivo:** Registrar o prontuário do paciente.

**Atores:** Médico
**Pré-condições:**
  O usuário deve estar autenticado.
  O paciente deve possuir cadastro no sistema.
  O paciente deve possuir cadastro no sistema.

**Fluxo Principal:**
 O usuário acessa a tela de prontuário.
 O usuário pesquisa o paciente.
 O sistema exibe os dados do paciente.
 O usuário clica em "Registrar"
 O médico informa os dados do atendimento.
 O usuário confirma a operação.
 O sistema salva.
**Fluxos Alternativos:**
  O paciente não possui prontuário cadastrado: o sistema informa que o prontuário não foi encontrado.
 Algum campo obrigatório não foi preenchido: o sistema solicita a correção
 O paciente não possui prontuário: o sistema exibe mensagem de erro
 **Pós-condições:**
    As informações do atendimento são registradas no prontuário do paciente.

 ### UC09 - Registrar Exame


**Objetivo:** Registrar o exame do paciente.

**Atores:** Médico, profissional de triagem
**Pré-condições:**
  O usuário deve estar autenticado.
  O paciente deve possuir cadastro no sistema.
  O paciente deve possuir uma consulta registrada.

**Fluxo Principal:**
 O usuário acessa a tela de exames.
 O usuário pesquisa o paciente.
 O sistema exibe os dados do paciente.
 O usuário seleciona a opção "Novo Exame".
 O usuário informa o tipo de exame.
 O usuário registra o resultado do exame.
 O usuário confirma a operação.
 O sistema salva as informações.
**Fluxos Alternativos:**
  O paciente não possui cadastro: o sistema informa que o paciente não foi encontrado.
  Algum campo obrigatório não foi preenchido: o sistema solicita a correção
  O paciente não realizou uma consulta 
 **Pós-condições:**
  O exame é registrado e fica vinculado ao prontuário do paciente.



 ### UC10 - Emitir relatório


**Objetivo:** Emitir relatório.

**Atores:** Todos
**Pré-condições:**
  O usuário deve estar autenticado.
  Deve existir informação cadastrada para o relatório solicitado.

**Fluxo Principal:**
  O usuário acessa a tela de relatórios.
  O usuário seleciona o tipo de relatório.
  O sistema exibe uma pré-visualização.
  O usuário seleciona a opção "Imprimir" ou "Exportar".
  O usuário confirma a operação.
  O sistema gera o relatório.
**Fluxos Alternativos:**
    Algum campo obrigatório não foi preenchido: o sistema solicita a correção
    O usuário não está autenticado: o sistema solicita o login.
    Não existem dados para o relatório solicitado: o sistema informa que nenhum registro foi encontrado.
 **Pós-condições:**
  O relatório é gerado e disponibilizado para impressão ou exportação.