Documentation
... Suíte com palavras chave de login do sistema

*** Settings ***
Library    AppiumLibrary
Library    FakerLibrary       locale=pt_BR

*** Keywords ***

DADO que eu esteja no app
    Capture Page Screenshot

QUANDO inserir dados de login validos
    Capture Page Screenshot

ENTÃO devo efetuar o login com sucesso
    Capture Page Screenshot

    