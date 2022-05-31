Documentation
...Suíte com testes de agendar serviço

*** Settings ***
Resource                    ../compartilhado/localizadores/ios/login/keywords.robot
Resource                    ../compartilhado/localizadores/ios/login/variables.robot
Resource                    ../compartilhado/localizadores/ios/agendar_servico/keywords.robot
Resource                    ../compartilhado/localizadores/ios/agendar_servico/variables.robot
Resource                    ../compartilhado/recursos/recursos_comuns.robot
Library                     AppiumLibrary
Test Setup                  Abrir Aplicativo
Test Teardown               Fechar Aplicativo

*** Test Case ***

Test Case 01: Cadastrar novo pet cachorro macho com sucesso
    Dado que esteja logado no app Petz agendando serviço
    Quando inserir dados validos de um cachorro macho
    Então o pet é cadastrado

Test Case 02: Cadastrar novo pet cachorro femea com sucesso
    Dado que esteja logado no app Petz agendando serviço
    Quando inserir dados validos de um cachorro femea
    Então o pet é cadastrado

Test Case 03: Cadastrar novo pet gato macho com sucesso
    Dado que esteja logado no app Petz agendando serviço
    Quando inserir dados validos de um gato macho
    Então o pet é cadastrado

Test Case 04: Cadastrar novo pet gato femea com sucesso
    Dado que esteja logado no app Petz agendando serviço
    Quando inserir dados validos de um gato femea
    Então o pet é cadastrado

Test Case 05: excluir pets cadastrados
    Dado que esteja logado no app Petz vendo o menu mais
    Quando entrar na tela de meus pets
    Então irei excluir os pets cadastrados

Test Case 06: Cadastrar novo pet sem sucesso validação genérica
    Dado que esteja logado no app Petz agendando serviço
    Quando nao inserir dados e apenas cadastrar
    Então recebo a mensagem de erro

Test Case 07: Cadastrar novo pet cachorro macho sem sucesso nome vazio
    Dado que esteja logado no app Petz agendando serviço
    Quando nao preencher o nome do cachorro macho
    Então recebo a mensagem de erro

Test Case 08: Cadastrar novo pet cachorro femea sem sucesso nome vazio
    Dado que esteja logado no app Petz agendando serviço
    Quando nao preencher o nome do cachorro femea
    Então recebo a mensagem de erro

Test Case 09: Cadastrar novo pet gato macho sem sucesso nome vazio
    Dado que esteja logado no app Petz agendando serviço
    Quando nao preencher o nome do gato macho
    Então recebo a mensagem de erro

Test Case 10: Cadastrar novo pet gato femea sem sucesso nome vazio
    Dado que esteja logado no app Petz agendando serviço
    Quando nao preencher o nome do gato femea
    Então recebo a mensagem de erro

Test Case 11: Cadastro de pet sem sucesso tipo de pet vazio
    Dado que esteja logado no app Petz agendando serviço
    Quando nao preencher o tipo de pet
    Então recebo a mensagem de erro

Test Case 12: Cadastro de pet sem sucesso raça vazio
    Dado que esteja logado no app Petz agendando serviço
    Quando nao preencher a raça
    Então recebo a mensagem de erro

Test Case 13: Cadastro de pet sem sucesso peso vazio
    Dado que esteja logado no app Petz agendando serviço
    Quando nao preencher o peso
    Então recebo a mensagem de erro

Test Case 14: Cadastro de pet sem sucesso sexo vazio
    Dado que esteja logado no app Petz agendando serviço
    Quando nao preencher o sexo
    Então recebo a mensagem de erro

Test Case 15: Cadastro de pet sem sucesso nascimento vazio
    Dado que esteja logado no app Petz agendando serviço
    Quando nao preencher o nascimento
    Então recebo a mensagem de erro