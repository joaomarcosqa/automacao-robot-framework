Documentation
...Suíte com testes de agendar serviço

*** Settings ***
Resource                    ../compartilhado/localizadores/android/login/keywords.robot
Resource                    ../compartilhado/localizadores/android/login/variables.robot
Resource                    ../compartilhado/localizadores/android/agendar_servico/keywords.robot
Resource                    ../compartilhado/localizadores/android/agendar_servico/variables.robot
Resource                    ../compartilhado/recursos/recursos_comuns.robot
Library                     AppiumLibrary
Test Setup                  Abrir Aplicativo
Test Teardown               Fechar Aplicativo

*** Test Case ***

# Test Case 01: Cadastrar novo pet cachorro macho com sucesso
#     Dado que esteja logado no app Petz agendando serviço - Android
#     Quando inserir dados validos de um cachorro macho - Android
#     Então o pet é cadastrado - Android

# Test Case 02: Cadastrar novo pet cachorro femea com sucesso
#     Dado que esteja logado no app Petz agendando serviço - Android
#     Quando inserir dados validos de um cachorro femea - Android
#     Então o pet é cadastrado - Android

# Test Case 03: Cadastrar novo pet gato macho com sucesso
#     Dado que esteja logado no app Petz agendando serviço - Android
#     Quando inserir dados validos de um gato macho - Android
#     Então o pet é cadastrado - Android

# Test Case 04: Cadastrar novo pet gato femea com sucesso
#     Dado que esteja logado no app Petz agendando serviço - Android
#     Quando inserir dados validos de um gato femea - Android
#     Então o pet é cadastrado - Android

Test Case 05: excluir pets cadastrados
    Dado que esteja logado no app Petz vendo o menu mais - Android
    Quando entrar na tela de meus pets - Android
    Então irei excluir os pets cadastrados - Android

# Test Case 06: Cadastrar novo pet sem sucesso validação genérica
#     Dado que esteja logado no app Petz agendando serviço - Android
#     Quando nao inserir dados e apenas cadastrar - Android
#     Então recebo a mensagem de erro - Android

# Test Case 07: Cadastrar novo pet cachorro macho sem sucesso nome vazio
#     Dado que esteja logado no app Petz agendando serviço - Android
#     Quando nao preencher o nome do cachorro macho - Android
#     Então recebo a mensagem de erro - Android

# Test Case 08: Cadastrar novo pet cachorro femea sem sucesso nome vazio
#     Dado que esteja logado no app Petz agendando serviço - Android
#     Quando nao preencher o nome do cachorro femea - Android
#     Então recebo a mensagem de erro - Android

# Test Case 09: Cadastrar novo pet gato macho sem sucesso nome vazio
#     Dado que esteja logado no app Petz agendando serviço - Android
#     Quando nao preencher o nome do gato macho - Android
#     Então recebo a mensagem de erro - Android

# Test Case 10: Cadastrar novo pet gato femea sem sucesso nome vazio
#     Dado que esteja logado no app Petz agendando serviço - Android
#     Quando nao preencher o nome do gato femea - Android
#     Então recebo a mensagem de erro - Android

# Test Case 11: Cadastro de pet sem sucesso tipo de pet vazio
#     Dado que esteja logado no app Petz agendando serviço - Android
#     Quando nao preencher o tipo de pet - Android
#     Então recebo a mensagem de erro - Android

# Test Case 12: Cadastro de pet sem sucesso raça vazio
#     Dado que esteja logado no app Petz agendando serviço - Android
#     Quando nao preencher a raça - Android
#     Então recebo a mensagem de erro - Android

# Test Case 13: Cadastro de pet sem sucesso peso vazio
#     Dado que esteja logado no app Petz agendando serviço - Android
#     Quando nao preencher o peso - Android
#     Então recebo a mensagem de erro - Android

# Test Case 14: Cadastro de pet sem sucesso sexo vazio
#     Dado que esteja logado no app Petz agendando serviço - Android
#     Quando nao preencher o sexo - Android
#     Então recebo a mensagem de erro - Android

# Test Case 15: Cadastro de pet sem sucesso nascimento vazio
#     Dado que esteja logado no app Petz agendando serviço - Android
#     Quando nao preencher o nascimento - Android
#     Então recebo a mensagem de erro - Android

# Test Case 16: Agendamento avulso sem profissional de preferencia
#     Dado que esteja logado no app Petz agendando serviço - Android
#     Quando realizar um agendamento sem profissional de preferencia - Android
#     Então vejo na tela a confirmação do agendamento - Android

Test Case 17: Agendamento avulso banho mais um servico sem profissional de preferencia
    Dado que esteja logado no app Petz agendando serviço - Android
    Quando realizar um agendamento avulso banho mais um servico sem profissional de preferencia - Android
    Então vejo na tela a confirmação do agendamento - Android

Test Case: Cancelar agendamentos
    Dado que esteja logado no app Petz em meus agendamentos - Android
    Quando existir agendamentos
    Então irei cancelá-los

# Test Case 18: Agendamento avulso banho mais tres servicos sem profissional de preferencia
#     Dado que esteja logado no app Petz agendando serviço - Android
#     Quando realizar um agendamento avulso banho mais dois servicos sem profissional de preferencia - Android
#     Então vejo na tela a confirmação do agendamento - Android

# Test Case 19: Agendamento avulso com profissional de preferencia
#     Dado que esteja logado no app Petz agendando serviço - Android
#     Quando realizar um agendamento com profissional de preferencia - Android
#     Então vejo na tela a confirmação do agendamento - Android

# Test Case 20: Agendamento avulso banho mais um servico com profissional de preferencia
#     Dado que esteja logado no app Petz agendando serviço - Android
#     Quando realizar um agendamento avulso banho mais um servico com profissional de preferencia - Android
#     Então vejo na tela a confirmação do agendamento - Android

# Test Case 21: Agendamento avulso banho mais tres servicos com profissional de preferencia
#     Dado que esteja logado no app Petz agendando serviço - Android
#     Quando realizar um agendamento avulso banho mais dois servicos com profissional de preferencia - Android
#     Então vejo na tela a confirmação do agendamento - Android

# Test Case 22: Agendamento de pacote sem profissional de preferecia
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case 23: Agendamento de pacote mais um servico avulso sem profissional de preferencia
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case 24: Agendamento de pacote com profissional de preferencia
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case 25: Agendamento de pacote mais um servico avulso com profissional de preferencia
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case 26: Agendamento sem sucesso banho para profissional nao disponivel
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case 27: Localizar loja mais proxima
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case 28: Favoritar profissional
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case 29: Desfavoritar profissional
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case 30: Ultrapassar limite de agendamentos simultaneos
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case 31: Repetir - Atendimento avulso com profissional de preferencia
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case 32: Repetir - Atendimento avulso sem profissional de preferencia
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case 39: Inserir observação durante o agendamento
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case 40: Favoritar loja
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case 41: Desfavoritar loja
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case 42: Repetir agendamento com pacote valido
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case 43: Repetir agendamento sem sucesso sem ter pacote valido
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case : 
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case : 
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case : 
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case : 
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case : 
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case : 
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case : 
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case : 
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case : 
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case : 
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case : 
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case : 
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case : 
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case : 
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case : 
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case : 
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case : 
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case : 
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case : 
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case : 
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case : 
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case : 
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case : 
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case : 
#     Dado que esteja logado no app Petz agendando serviço - Android

# Test Case : 
#     Dado que esteja logado no app Petz agendando serviço - Android


# Cancelar pacote na consolidada