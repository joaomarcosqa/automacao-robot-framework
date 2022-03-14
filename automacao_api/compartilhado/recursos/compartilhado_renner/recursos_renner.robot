Documentation
... Suíte com recursos da VW

*** Settings ***
Library     RequestsLibrary
Library     Collections
Library     ${EXECDIR}/automacao_api/compartilhado/recursos/compartilhado_renner/parametros_renner.py
Library     JSONLibrary

***Keywords***

DADO que eu me conecte ao WebService renner
    Sleep               1

QUANDO realizar conexão com sucesso renner
    Sleep               1

ENTÃO realize o login renner
    &{json_login}           Renner Login
    ${response}         POST        ${HOST_SIGNIN_RENNER}          json=${json_login}
    ${JSON_CLIENTE}             Set Variable        ${response.json()}
    ${JSON_STATUS}      Get Value From Json         ${JSON_CLIENTE}         $.message
    Should Contain      ${JSON_STATUS}              SUCESSO: Cadastro realizado
    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain      ${CONVERT}      200    