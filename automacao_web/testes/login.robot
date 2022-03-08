Documentation
...Suíte com testes de login

*** Settings ***
Resource                  ../compartilhado/localizadores/login/keywords.robot
Resource                  ../compartilhado/localizadores/login/variables.robot
Resource                  ../compartilhado/recursos/recursos_comuns.robot
Test Setup                Abrir navegador
Test Teardown             Fechar navegador

*** Test Case ***
# alguns exemplos de casos de teste ja com BDD pronto
Test Case 01: Login com sucesso e-mail
    DADO que eu esteja no site
#     QUANDO acessar a página de login do site
#     ENTÃO devo efetuar o login com sucesso

# Test Case 02: Login sem sucesso - validação genérica
#     DADO que eu esteja no site
#     QUANDO acessar a página de login do site
#     ENTÃO devo efetuar o login sem sucesso

# Test Case 03: Login sem sucesso - e-mail com inválido
#     DADO que eu esteja no site
#     QUANDO acessar a página de login do site
#     ENTÃO devo efetuar o login sem sucesso e-mail inválido

# Test Case 04: Login sem sucesso - e-mail e senha inválidos
#     DADO que eu esteja no site
#     QUANDO acessar a página de login do site
#     ENTÃO devo efetuar o login sem sucesso e-mail e senha inválida

# Test Case 05: Teste de navegação
#     DADO que esteja logado na home
    