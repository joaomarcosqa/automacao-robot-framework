Documentation
... Suíte com palavras chave de login do sistema

*** Keywords ***
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