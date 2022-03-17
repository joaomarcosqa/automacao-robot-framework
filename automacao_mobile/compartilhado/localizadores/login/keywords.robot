ocumentation
... Suíte com palavras chave de login do sistema

*** Settings ***
Library    AppiumLibrary
Library    String
Library    FakerLibrary       locale=pt_BR

*** Keywords ***
# Algumas keywords ja prontas basta preencher as variaveis e executar os casos de teste
DADO que eu esteja no site
    Go To       ${home_inicio}