Documentation
...Suíte com testes de meus agendamentos

*** Settings ***
Resource                    ../compartilhado/localizadores/ios/login/keywords.robot
Resource                    ../compartilhado/localizadores/ios/login/variables.robot
Resource                    ../compartilhado/localizadores/ios/meus_agendamentos/keywords.robot
Resource                    ../compartilhado/localizadores/ios/meus_agendamentos/variables.robot
Resource                    ../compartilhado/recursos/recursos_comuns.robot
Library                     AppiumLibrary
Test Setup                  Abrir Aplicativo
Test Teardown               Fechar Aplicativo

*** Test Case ***