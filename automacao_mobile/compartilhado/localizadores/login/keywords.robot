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
    Capture Page Screenshot                  

QUANDO inserir dados de login validos
    Click Element                                   ${btn_menu_home}     
    Sleep                                           2
    Wait Until Page Contains Element                ${btn_home_entrar}
    Click Element                                   ${btn_home_entrar}
    Sleep                                           2
    Wait Until Page Contains Element                ${campo_email}
    Input Text                                      ${campo_email}                 ${email_valido}
    Sleep                                           2
    Wait Until Page Contains Element                ${campo_senha}
    Input Text                                      ${campo_senha}                   ${senha_valida}
    Sleep                                           2
    Wait Until Page Contains Element                ${btn_login_entrar}
    Click Element                                   ${btn_login_entrar}
    Sleep                                           1
    Capture Page Screenshot     

ENTÃO devo efetuar o login com sucesso
    Sleep                                           2
    Wait Until Page Contains Element                ${validacao_home_1}
    Wait Until Page Contains Element                ${validacao_home_2}
    Wait Until Page Contains Element                ${validacao_home_3}
    Wait Until Page Contains Element                ${validacao_home_4}
    Capture Page Screenshot

QUANDO inserir dados de login invalidos
    Click Element                                   ${btn_menu_home}     
    Sleep                                           2
    Wait Until Page Contains Element                ${btn_home_entrar}
    Click Element                                   ${btn_home_entrar}
    Sleep                                           2
    Wait Until Page Contains Element                ${campo_email}
    Input Text                                      ${campo_email}                   ${email_invalido}
    Sleep                                           2
    Wait Until Page Contains Element                ${campo_senha}
    Input Text                                      ${campo_senha}                   ${senha_valida}
    Sleep                                           2
    Wait Until Page Contains Element                ${btn_login_entrar}
    Click Element                                   ${btn_login_entrar}
    Sleep                                           1
    Capture Page Screenshot    

ENTÃO não irei efetuar login
    Sleep                                           2
    Wait Until Page Contains Element                ${msg_dados_login_invalidos}
    Capture Page Screenshot

QUANDO inserir um email nao cadastrado
    Click Element                                   ${btn_menu_home}     
    Sleep                                           2
    Wait Until Page Contains Element                ${btn_home_entrar}
    Click Element                                   ${btn_home_entrar}
    Sleep                                           2
    Wait Until Page Contains Element                ${campo_email}
    Input Text                                      ${campo_email}                   ${email_nao_cadastrado}
    Sleep                                           2
    Wait Until Page Contains Element                ${campo_senha}
    Input Text                                      ${campo_senha}                   ${senha_valida}
    Sleep                                           2
    Wait Until Page Contains Element                ${btn_login_entrar}
    Click Element                                   ${btn_login_entrar}
    Sleep                                           1
    Capture Page Screenshot 

QUANDO inserir login e senha invalidos
    Click Element                                   ${btn_menu_home}     
    Sleep                                           2
    Wait Until Page Contains Element                ${btn_home_entrar}
    Click Element                                   ${btn_home_entrar}
    Sleep                                           2
    Wait Until Page Contains Element                ${campo_email}
    Input Text                                      ${campo_email}                   ${email_nao_cadastrado}
    Sleep                                           2
    Wait Until Page Contains Element                ${campo_senha}
    Input Text                                      ${campo_senha}                   ${senha_invalida}
    Sleep                                           2
    Wait Until Page Contains Element                ${btn_login_entrar}
    Click Element                                   ${btn_login_entrar}
    Sleep                                           1
    Capture Page Screenshot 

ENTÃO não irei efetuar login com dados invalidos
    Sleep                                           2
    Wait Until Page Contains Element                ${valida_email_nao_cadastrado}
    Capture Page Screenshot
    
ENTÃO não irei efetuar login com email nao cadastrado
    Sleep                                           2
    Wait Until Page Contains Element                ${valida_email_nao_cadastrado}
    Capture Page Screenshot