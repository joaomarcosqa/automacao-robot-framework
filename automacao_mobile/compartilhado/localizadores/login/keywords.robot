Documentation
... Suíte com palavras chave de login do sistema

*** Settings ***
Library    AppiumLibrary
Library    FakerLibrary       locale=pt_BR

*** Keywords ***

DADO que eu esteja no app
    Wait Until Page Contains Element                ${btn_localizao_agr_nao}        
    Click Element                                   ${btn_localizao_agr_nao}
    Sleep                                           2     
    Wait Until Page Contains Element                ${btn_msg_agendamentos}         
    Click Element                                   ${btn_msg_agendamentos}
    Sleep                                           2                            
    Wait Until Page Contains Element                ${btn_msg_estabelecimentos}     
    Click Element                                   ${btn_msg_estabelecimentos}
    Sleep                                           2            
    Wait Until Page Contains Element                ${btn_msg_agendamento}          
    Click Element                                   ${btn_msg_agendamento}
    Sleep                                           2     
    Wait Until Page Contains Element                ${btn_localizacao_home_nao}
    Wait Until Element Is Visible                   ${btn_localizacao_home_nao}
    Sleep                                           2
    Click Element                                   ${btn_localizacao_home_nao}
    Wait Until Page Contains Element                ${valida_home}                  

QUANDO inserir dados de login validos
    Capture Page Screenshot

ENTÃO devo efetuar o login com sucesso
    Capture Page Screenshot

    