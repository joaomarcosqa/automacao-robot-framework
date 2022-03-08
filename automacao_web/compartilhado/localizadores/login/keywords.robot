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
    Click Element                           ${perfil_entrar}
    Wait Until Element Is Visible           ${ponteiro_login}

ENTÃO devo efetuar o login com sucesso
    Input Text                          ${campo_email}                      ${email}
    Input Text                          ${campo_senha}                      ${senha}
    Wait Until Element Is Visible       ${btn_entrar}
    Click button                        ${btn_entrar}
    Wait Until Element Is Visible       ${ponteiro_login}
    Sleep                               4
    Title Should Be                     ${home_title}

ENTÃO devo efetuar o login sem sucesso
    ${email_fake}                       FakerLibrary.email
    Input Text                          ${campo_email}                      ${email_fake}
    Input Text                          ${campo_senha}                      ${senha}
    Click button                        ${btn_entrar}
    Wait Until Element Is Visible       ${login_erro}
    Should Contain                      ${login_erro}                       ${login_msg_erro}

ENTÃO devo efetuar o login sem sucesso e-mail inválido
    ${email_fake}                       FakerLibrary.email
    Input Text                          ${campo_email}                      ${email_fake}
    Input Text                          ${campo_senha}                      ${senha}
    Click button                        ${btn_entrar}
    Wait Until Element Is Visible       ${login_erro}
    Should Contain                      ${login_erro}                       ${login_msg_erro}

ENTÃO devo efetuar o login sem sucesso senha inválida
    Input Text                          ${campo_email}                      ${email}
    Input Password                      ${campo_senha}                      ${nrm_password_invalida} 
    Click button                        ${btn_entrar}
    Wait Until Element Is Visible       ${login_erro}
    Should Contain                      ${login_erro}                       ${login_msg_erro}

ENTÃO devo recuperar senha com sucesso
    Wait Until Element Is Visible       ${link_esqueci_a_senha}
    Click Element                       ${link_esqueci_a_senha}
    Wait Until Element Is Visible       ${ponteiro_recuperar_senha}
    Input Text                          ${campo_email_rec_senha}            ${email}
    Wait Until Element Is Visible       ${btn_recuperar_senha}
    Click Button                        ${btn_recuperar_senha}
    Wait Until Element Is Visible       ${ponteiro_msg_codigo_email}
    Sleep                               8

ENTÃO devo recuperar senha sem sucesso
    ${email_fake}                       FakerLibrary.email
    Wait Until Element Is Visible       ${link_esqueci_a_senha}
    Click Element                       ${link_esqueci_a_senha}
    Wait Until Element Is Visible       ${ponteiro_recuperar_senha}
    Input Text                          ${campo_email_rec_senha}            ${email_fake}
    Wait Until Element Is Visible       ${btn_recuperar_senha}
    Click Button                        ${btn_recuperar_senha}
    Wait Until Element Is Visible       ${ponteiro_msg_erro_enviar_codigo}

ENTÃO devo efetuar o login sem sucesso e-mail e senha inválida
    ${email_fake}                       FakerLibrary.email
    Input Text                          ${campo_email}                      ${email_fake}
    Input Text                          ${campo_senha}                      ${nrm_password_invalida}
    Click button                        ${btn_entrar}
    Wait Until Element Is Visible       ${login_erro}
    Should Contain                      ${login_erro}                       ${login_msg_erro}

DADO que esteja logado na home
    Run Keyword         DADO que eu esteja no site
    Run Keyword         QUANDO acessar a página de login do site
    Run Keyword         ENTÃO devo efetuar o login com sucesso
