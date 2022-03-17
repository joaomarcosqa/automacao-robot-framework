ocumentation
...Suíte com testes de login

*** Settings ***
Resource                  ../compartilhado/localizadores/login/keywords.robot
Resource                  ../compartilhado/localizadores/login/variables.robot
Resource                  ../compartilhado/recursos/recursos_comuns.robot
Test Setup                Abrir navegador
Test Teardown             Fechar navegador

*** Test Case ***

Test Case 01: Login com sucesso e-mail
    DADO que eu esteja no site
    # QUANDO acessar a página de login do site
    # ENTÃO devo efetuar o login com sucesso