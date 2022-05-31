Documentation
... Suíte específica para os testes em APIs de cadastro

*** Settings ***
Resource                  ../compartilhado/recursos/recursos.robot
Resource                  ../compartilhado/variaveis/variaveis_api.robot

***Test Cases***

Cenário 01: Efetuar cadastro com sucesso
    Realizar cadastro

Cenário 02: Efetuar cadastro sem sucesso ja cadastrado
    Não realizar cadastro