Documentation
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
#     QUANDO acessar a página de login do site
#     ENTÃO devo efetuar o login com sucesso

# Test Case 02: Login sem sucesso - validação genérica
#     DADO que eu esteja no site
#     QUANDO inserir dados de login genericos
#     ENTÃO não irei efetuar login

# Test Case 03: Login sem sucesso - e-mail com inválido
#     DADO que eu esteja no site
#     QUANDO inserir dados de login email invalido
#     ENTÃO não irei efetuar login

# Test Case 04: Login sem sucesso - e-mail e senha inválidos
#     DADO que eu esteja no site
#     QUANDO inserir dados de login invalidos
#     ENTÃO não irei efetuar login

