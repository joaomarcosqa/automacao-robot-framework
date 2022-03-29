Documentation
...Suíte com testes de login

*** Settings ***
Resource                  ../compartilhado/localizadores/login/keywords.robot
Resource                  ../compartilhado/localizadores/login/variables.robot
Resource                  ../compartilhado/recursos/recursos_comuns.robot
Library                    AppiumLibrary
Test Setup                Acessar Aplicativo
Test Teardown             Fechar Aplicativo

*** Test Case ***

Test Case 01: Login com sucesso e-mail
    DADO que eu esteja no app
    QUANDO inserir dados de login validos
    ENTÃO devo efetuar o login com sucesso

Test Case 02: Login sem sucesso - e-mail inválido
    DADO que eu esteja no app
    QUANDO inserir dados de login invalidos
    ENTÃO não irei efetuar login

Test Case 03: Login sem sucesso - e-mail nao cadastrado
    DADO que eu esteja no app
    QUANDO inserir um email nao cadastrado
    ENTÃO não irei efetuar login com email nao cadastrado

Test Case 04: Login sem sucesso - e-mail e senha inválidos
    DADO que eu esteja no app
    QUANDO inserir login e senha invalidos
    ENTÃO não irei efetuar login com dados invalidos
