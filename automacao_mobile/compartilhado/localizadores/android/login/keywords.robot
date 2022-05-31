Documentation
... Suíte com palavras chave de login do sistema

*** Settings ***
Library    AppiumLibrary
Library    FakerLibrary       locale=pt_BR

*** Keywords ***
Dado que esteja logado - email - Android
    Wait Until Element Is Visible           ${validateLogin}
    Input Text                              ${textfieldEmailOrCpf}        testeqajoao@gmail.com
    Input Text                              ${passwordTextfield}            123456
    Click Element                           ${enterButton}

Dado que esteja logado - cpf - Android
    Wait Until Element Is Visible           ${validateLogin}
    Input Text                              ${textfieldEmailOrCpf}        45368311850
    Input Text                              ${passwordTextfield}            123456
    Click Element                           ${enterButton}

Quando entrar na aba banho e tosa - Android
    Sleep                                   4
    Wait Until Element Is Visible           ${homeValidate}
    Click Element                           ${homeButtonMore}
    Wait Until Element Is Visible           ${validateMenuMore}
    Click Element                           ${btMenuMore}
    Sleep                                   3

Entao valido a tela de banho e tosa - Android
    Wait Until Element Is Visible           ${validateBt}
    Wait Until Element Is Visible           ${validateBtBanner}
    Page Should Contain Text                Agendar serviço
    Page Should Contain Text                Meus agendamentos

Dado que esteja logado no app Petz agendando serviço - Android
    Run Keyword                             Dado que esteja logado - email - Android
    Run Keyword                             Quando entrar na aba banho e tosa - Android
    Run Keyword                             Entao valido a tela de banho e tosa - Android
    Click Element                           ${homeBtScheduleService}

Dado que esteja logado no app Petz em meus agendamentos - Android
    Run Keyword                             Dado que esteja logado - email - Android
    Run Keyword                             Quando entrar na aba banho e tosa - Android
    Run Keyword                             Entao valido a tela de banho e tosa - Android
    Click Element                           ${homeBtMyAppointments}
    
Dado que esteja logado no app Petz - Android
    Run Keyword                             Dado que esteja logado - email

Dado que esteja logado no app Petz vendo o menu mais - Android
    Run Keyword                             Dado que esteja logado - email - Android
    Wait Until Element Is Visible           ${homeValidate}
    Click Element                           ${homeButtonMore}
    Wait Until Element Is Visible           ${validateMenuMore}

Dado que esteja logado no app Petz com pacote disponível - Android
    Run Keyword                             Dado que esteja logado - cpf - Android
    Wait Until Element Is Visible           ${homeValidate}
    Click Element                           ${homeButtonMore}
    Wait Until Element Is Visible           ${validateMenuMore}