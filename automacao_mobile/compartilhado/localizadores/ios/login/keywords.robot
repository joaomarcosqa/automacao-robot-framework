Documentation
... Suíte com palavras chave de login do sistema

*** Settings ***
Library    AppiumLibrary
Library    FakerLibrary     locale=pt_BR

*** Keywords ***
Dado que esteja logado - email
    ${checkElement}=                 Run Keyword and Return Status    Wait Until Page Contains Element    ${init}
    LOG                              ${checkElement}
    IF                               ${checkElement} == True
    Click Element                    ${init}
    Wait Until Page Contains         Permitir
    Click Text                       Permitir
    Wait Until Element Is Visible    ${validateLogin}                 10
    Input Text                       ${textfieldEmailOrCpf}           testeqajoao@gmail.com
    Input Text                       ${passwordTextfield}             123456
    Click Element                    ${enterButton}
    ELSE
    Wait Until Element Is Visible    ${validateLogin}
    Input Text                       ${textfieldEmailOrCpf}           testeqajoao@gmail.com
    Input Text                       ${passwordTextfield}             123456
    Click Element                    ${enterButton}
    END

Dado que esteja logado - cpf
    ${checkElement}=                 Run Keyword and Return Status    Wait Until Page Contains Element    ${init}
    LOG                              ${checkElement}
    IF                               ${checkElement} == True
    Click Element                    ${init}
    Wait Until Page Contains         Permitir
    Click Text                       Permitir
    Wait Until Element Is Visible    ${validateLogin}                 10
    Input Text                       ${textfieldEmailOrCpf}           testeqajoao@gmail.com
    Input Text                       ${passwordTextfield}             123456
    Click Element                    ${enterButton}
    ELSE
    Wait Until Element Is Visible    ${validateLogin}
    Input Text                       ${textfieldEmailOrCpf}           testeqajoao@gmail.com
    Input Text                       ${passwordTextfield}             123456
    Click Element                    ${enterButton}
    END

Quando entrar na aba banho e tosa
    Sleep         4
    Wait Until Element Is Visible    ${homeValidate}
    Click Text    ${homeButtonMore}
    Sleep         2
    Wait Until Element Is Visible    ${validateMenuMore}
    Click Element                    ${btMenuMore}
    Sleep                            3

Entao valido a tela de banho e tosa
    Wait Until Element Is Visible    ${validateBt}
    Wait Until Element Is Visible    ${validateBtBanner}
    Page Should Contain Text         Agendar serviço
    Page Should Contain Text         Meus agendamentos

Dado que esteja logado no app Petz agendando serviço
    Run Keyword      Dado que esteja logado - email
    Run Keyword      Quando entrar na aba banho e tosa
    Run Keyword      Entao valido a tela de banho e tosa
    Click Element    ${homeBtScheduleService}

Dado que esteja logado no app Petz em meus agendamentos
    Run Keyword                 Dado que esteja logado - email
    Run Keyword                 Quando entrar na aba banho e tosa
    Run Keyword                 Entao valido a tela de banho e tosa
    Click Element               ${homeBtMyAppointments}
    Page Should Contain Text    Selecione o pet que será atendido

Dado que esteja logado no app Petz
    Run Keyword    Dado que esteja logado - email

Dado que esteja logado no app Petz vendo o menu mais
    Run Keyword                      Dado que esteja logado - email
    Wait Until Element Is Visible    ${homeValidate}
    Click Element                    ${homeButtonMore}
    Wait Until Element Is Visible    ${validateMenuMore}