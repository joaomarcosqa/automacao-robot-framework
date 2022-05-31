Documentation
... Suíte com recursos da VW

*** Settings ***
Library     RequestsLibrary
Library     Collections
Library     ${EXECDIR}/automacao_api/compartilhado/recursos/parametros.py
Library     JSONLibrary

***Keywords***

Realizar login
    &{json_login}           Login
    ${response}         POST        ${HOST_SIGNIN}          json=${json_login}
    ${JSON_CLIENTE}             Set Variable        ${response.json()}
    ${JSON_STATUS}      Get Value From Json         ${JSON_CLIENTE}         $.message
    Should Contain      ${JSON_STATUS}              SUCESSO: Cadastro realizado
    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain      ${CONVERT}      200    

Realizar cadastro
    &{json_cliente}           Cadastro
    ${response}         POST        ${HOST_CADASTRO}          json=${json_cliente}           expected_status=200
    ${JSON_CLIENTE}             Set Variable        ${response.json()}
    ${JSON_STATUS}      Get Value From Json         ${JSON_CLIENTE}         $.message
    Should Contain      ${JSON_STATUS}              SUCCESS
    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain      ${CONVERT}      200

Não realizar cadastro
    &{json_cliente}           Cadastro Cpf Ja Cadastrado
    ${response}         POST        ${HOST_CADASTRO}          json=${json_cliente}
    ${JSON_CLIENTE}             Set Variable        ${response.json()}
    ${JSON_STATUS}      Get Value From Json         ${JSON_CLIENTE}         $.message
    Should Contain      ${JSON_STATUS}              CPF ou CNPJ JÁ EXISTE
    ${CONVERT} =        Convert To String           ${response.status_code}
    Should Contain      ${CONVERT}      200