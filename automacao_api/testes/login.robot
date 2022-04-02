Documentation
... Suíte específica para os testes em APIs de login

*** Settings ***
Resource                  ../compartilhado/recursos/recursos.robot
Resource                  ../compartilhado/variaveis/variaveis_api.robot

***Test Cases***

Cenário 01: Efetuar login com sucesso
    Realizar login