Documentation
...Suíte com testes de login

*** Settings ***
Resource                    ../compartilhado/localizadores/ios/login/keywords.robot
Resource                    ../compartilhado/localizadores/ios/login/variables.robot
Resource                    ../compartilhado/recursos/recursos_comuns.robot
Library                     AppiumLibrary
Test Setup                  Abrir Aplicativo
Test Teardown               Fechar Aplicativo

*** Test Case ***

Test Case 01: Login com sucesso e-mail
    Dado que esteja logado - email
    Quando entrar na aba banho e tosa
    Entao valido a tela de banho e tosa

Test Case 02: Login com sucesso cpf
    Dado que esteja logado - cpf
    Quando entrar na aba banho e tosa
    Entao valido a tela de banho e tosa