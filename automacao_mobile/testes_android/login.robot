Documentation
...Suíte com testes de login

*** Settings ***
Resource                    ../compartilhado/localizadores/android/login/keywords.robot
Resource                    ../compartilhado/localizadores/android/login/variables.robot
Resource                    ../compartilhado/localizadores/android/agendar_servico/keywords.robot
Resource                    ../compartilhado/localizadores/android/agendar_servico/variables.robot
Resource                    ../compartilhado/localizadores/android/meus_agendamentos/keywords.robot
Resource                    ../compartilhado/localizadores/android/meus_agendamentos/variables.robot
Resource                    ../compartilhado/recursos/recursos_comuns.robot
Library                     AppiumLibrary
Test Setup                  Abrir Aplicativo
Test Teardown               Fechar Aplicativo

*** Test Case ***

Test Case 01: Login com sucesso e-mail
    Dado que esteja logado - email - Android
    Quando entrar na aba banho e tosa - Android
    Entao valido a tela de banho e tosa - Android

Test Case 02: Login com sucesso cpf
    Dado que esteja logado - cpf - Android
    Quando entrar na aba banho e tosa - Android
    Entao valido a tela de banho e tosa - Android