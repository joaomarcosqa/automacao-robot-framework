Documentation
...Suíte com testes de cadastro

*** Settings ***
Resource                    ../compartilhado/localizadores/android/cadastro/keywords.robot
Resource                    ../compartilhado/localizadores/android/cadastro/variables.robot
Resource                    ../compartilhado/recursos/recursos_comuns.robot
Library                     AppiumLibrary
Test Setup                  Abrir Aplicativo
Test Teardown               Fechar Aplicativo

*** Test Case ***
