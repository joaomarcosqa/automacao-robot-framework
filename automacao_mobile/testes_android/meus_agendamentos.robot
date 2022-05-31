Documentation
...Suíte com testes de meus agendamentos

*** Settings ***
Resource                    ../compartilhado/localizadores/android/login/keywords.robot
Resource                    ../compartilhado/localizadores/android/login/variables.robot
Resource                    ../compartilhado/localizadores/android/meus_agendamentos/keywords.robot
Resource                    ../compartilhado/localizadores/android/meus_agendamentos/variables.robot
Resource                    ../compartilhado/recursos/recursos_comuns.robot
Library                     AppiumLibrary
Test Setup                  Abrir Aplicativo
Test Teardown               Fechar Aplicativo

*** Test Case ***

Test Case 33: Reagendar atendimento avulso com profissional de preferencia
    Dado que esteja logado no app Petz agendando serviço

Test Case 34: Reagendar atendimento avulso sem profissional de preferencia
    Dado que esteja logado no app Petz agendando serviço

Test Case 35: Cancelar agendamento avulso
    Dado que esteja logado no app Petz agendando serviço

Test Case 36: Cancelar agendamento avulso no ver mais
    Dado que esteja logado no app Petz agendando serviço

Test Case 37: Cancelar agendamento de pacote
    Dado que esteja logado no app Petz agendando serviço

Test Case 38: Cancelar agendamento de pacote no ver mais
    Dado que esteja logado no app Petz agendando serviço