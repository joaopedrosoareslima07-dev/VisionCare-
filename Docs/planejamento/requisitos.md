# Levantamento de Requisitos

## Objetivo

O VisionCare tem como objetivo gerenciar clínicas oftalmológicas, centralizando informações de pacientes, consultas, exames, médicos e usuários do sistema.

---
-- Versão 1.0

## RF01 - Cadastro de Pacientes
O sistema deverá permitir cadastrar, editar, consultar e desativar pacientes.

## RF02 - Cadastro de Médicos
O sistema deverá permitir cadastrar, editar, consultar e desativar médicos.

## RF03 - Agendamento de Consultas
O sistema deverá permitir agendar, remarcar e cancelar consultas.

## RF04 - Cadastro de Exames
O sistema deverá permitir cadastrar exames e registrar seus resultados.

## RF05 - Prontuário do Paciente
O sistema deverá permitir consultar o histórico clínico do paciente.

## RF06 - Login de Usuários
O sistema deverá permitir autenticar usuários por meio de login e senha.

## RF07 - Controle de Permissões
O sistema deverá permitir controlar os níveis de acesso dos usuários.

## RF08 - Relatórios
O sistema deverá permitir gerar relatórios administrativos e financeiros.




...

---

# Requisitos Não Funcionais (RNF)

São características do sistema.

## RNF01
O sistema deverá utilizar Django.

## RNF02
O banco de dados será MySQL.

## RNF03
O sistema deverá possuir autenticação.

## RNF04
As senhas deverão ser armazenadas criptografadas.

## RNF05
A interface deverá ser responsiva.

## RNF06
O código deverá seguir boas práticas de programação.

---

# Regras de Negócio

## RN01
Cada paciente deverá possuir um CPF único no sistema.

## RN02
Um médico poderá atender várias consultas.

## RN03
Cada consulta deverá estar vinculada a apenas um paciente.

## RN04
Cada exame deverá estar vinculado a uma consulta.

## RN05
Não será permitido excluir pacientes que possuam consultas registradas.

## RN06
Cada despesa deverá estar vinculada a apenas um título financeiro.

## RN07
Não será permitido realizar o fechamento de caixa enquanto existir um fechamento em aberto.

## RN08
Não será permitido cadastrar dois pacientes com o mesmo CPF.

## RN09
Não será permitido agendar duas consultas para o mesmo médico no mesmo horário.

## RN10
Somente usuários autenticados poderão acessar o sistema.

## RN11
Os usuários somente poderão acessar funcionalidades compatíveis com seu nível de permissão.

## RN12
Uma consulta somente poderá ser marcada para um médico ativo.

## RN13
O prontuário do paciente será atualizado a cada consulta realizada.