Documentation
...Suíte com testes de cadastro

*** Settings ***
Resource                    ../compartilhado/localizadores/ios/cadastro/keywords.robot
Resource                    ../compartilhado/localizadores/ios/cadastro/variables.robot
Resource                    ../compartilhado/recursos/recursos_comuns.robot
Library                     AppiumLibrary
Test Setup                  Abrir Aplicativo
Test Teardown               Fechar Aplicativo

*** Test Case ***
