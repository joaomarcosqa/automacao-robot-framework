Documentation
...Suíte com testes de cadastro

*** Settings ***
Resource                    ../compartilhado/localizadores/android/usuario_deslogado/keywords.robot
Resource                    ../compartilhado/localizadores/android/usuario_deslogado/variables.robot
Resource                    ../compartilhado/recursos/recursos_comuns.robot
Library                     AppiumLibrary
Test Setup                  Abrir Aplicativo
Test Teardown               Fechar Aplicativo

*** Test Case ***
