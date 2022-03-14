Documentation
... Suíte específica para os testes de API

*** Settings ***
Resource                  ../compartilhado/recursos/compartilhado_renner/recursos_renner.robot
Resource                  ../compartilhado/variaveis/variaveis_api.robot

***Test Cases***

Cenário 01: Efetuar login com sucesso
    DADO que eu me conecte ao WebService renner
    QUANDO realizar conexão com sucesso renner
    ENTÃO realize o login renner