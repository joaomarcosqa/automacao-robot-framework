Documentation
... Suíte com palavras chave de login do sistema

*** Settings ***
Library    SeleniumLibrary
Library    String
Library    FakerLibrary       locale=pt_BR

*** Keywords ***
# Algumas keywords ja prontas basta preencher as variaveis e executar os casos de teste
DADO que eu esteja no site
    Go To       ${home_inicio}

QUANDO acessar a página de login do site
    Click Element                           
    Wait Until Element Is Visible           

ENTÃO devo efetuar o login com sucesso
    Input Text                                                
    Input Text                                               
    Wait Until Element Is Visible       
    Click button                        
    Wait Until Element Is Visible       
    Sleep                               
    Title Should Be                     