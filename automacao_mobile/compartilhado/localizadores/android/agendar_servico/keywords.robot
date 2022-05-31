Documentation
... Suíte com palavras chave de agendamento

*** Settings ***
Library    AppiumLibrary
Library    FakerLibrary     locale=pt_BR

*** Keywords ***
Validar tela de Cadastro - Android
    Wait Until Page Contains    Adicionar foto
    Wait Until Page Contains    Nome do pet
    Wait Until Page Contains    Tipo pet
    Wait Until Page Contains    Raça
    Wait Until Page Contains    Peso (Kg)
    Wait Until Page Contains    Sexo
    Wait Until Page Contains    Data de nascimento
    Wait Until Page Contains    Microchip
    Wait Until Page Contains    Cadastrar

Quando inserir dados validos de um cachorro macho - Android
    Sleep                            2
    Click Element                    ${registerPet}
    Wait Until ELement Is Visible    ${validateRegistrationScreen}
    Run Keyword                      Validar tela de Cadastro - Android
    ${name}                          FakerLibrary.Name
    Input Text                       ${fieldNameRegistration}               ${name}
    Click Element                    ${typeOfPetRegistration}
    Wait Until ELement Is Visible    ${validatesTypeOfPet}
    Click Element                    ${dog}
    Sleep                            2
    Click Element                    ${animalBreedRegistration}
    Sleep                            2
    Click Text                       ${firstDogBreed}
    Sleep                            2
    Input Text                       ${textfieldWeightRegistration}         25
    Sleep                            2
    Click Element                    ${sexRegistration}
    Sleep                            2
    Wait Until Element Is Visible    ${validateScreenSexRegistration}
    Sleep                            2
    Click Element                    ${maleSex}
    Sleep                            2
    Input Text                       ${textfieldDateOfBirthRegistration}    10022020
    Sleep                            2


Quando inserir dados validos de um cachorro femea - Android
    Sleep                            2
    Click Element                    ${registerPet}
    Wait Until ELement Is Visible    ${validateRegistrationScreen}
    Run Keyword                      Validar tela de Cadastro - Android
    ${name}                          FakerLibrary.Name
    Input Text                       ${fieldNameRegistration}               ${name}
    Click Element                    ${typeOfPetRegistration}
    Wait Until ELement Is Visible    ${validatesTypeOfPet}
    Click Element                    ${dog}
    Sleep                            2
    Click Element                    ${animalBreedRegistration}
    Sleep                            2
    Click Text                       ${firstDogBreed}
    Sleep                            2
    Input Text                       ${textfieldWeightRegistration}         20
    Sleep                            2
    Click Element                    ${sexRegistration}
    Sleep                            2
    Wait Until Element Is Visible    ${validateScreenSexRegistration}
    Sleep                            2
    Click Element                    ${femaleSex}
    Sleep                            2
    Input Text                       ${textfieldDateOfBirthRegistration}    10022020
    Sleep                            2


Quando inserir dados validos de um gato macho - Android
    Sleep                            2
    Click Element                    ${registerPet}
    Wait Until ELement Is Visible    ${validateRegistrationScreen}
    Run Keyword                      Validar tela de Cadastro - Android
    ${name}                          FakerLibrary.Name
    Input Text                       ${fieldNameRegistration}               ${name}
    Click Element                    ${typeOfPetRegistration}
    Wait Until ELement Is Visible    ${validatesTypeOfPet}
    Click Element                    ${cat}
    Sleep                            2
    Click Element                    ${animalBreedRegistration}
    Sleep                            2
    Click Text                       ${firstCatBreed}
    Sleep                            2
    Input Text                       ${textfieldWeightRegistration}         25
    Sleep                            2
    Click Element                    ${sexRegistration}
    Sleep                            2
    Wait Until Element Is Visible    ${validateScreenSexRegistration}
    Sleep                            2
    Click Element                    ${maleSex}
    Sleep                            2
    Input Text                       ${textfieldDateOfBirthRegistration}    10022020
    Sleep                            2


Quando inserir dados validos de um gato femea - Android
    Sleep                            2
    Click Element                    ${registerPet}
    Wait Until ELement Is Visible    ${validateRegistrationScreen}
    Run Keyword                      Validar tela de Cadastro - Android
    ${name}                          FakerLibrary.Name
    Input Text                       ${fieldNameRegistration}               ${name}
    Click Element                    ${typeOfPetRegistration}
    Wait Until ELement Is Visible    ${validatesTypeOfPet}
    Click Element                    ${cat}
    Sleep                            2
    Click Element                    ${animalBreedRegistration}
    Sleep                            2
    Click Text                       ${firstCatBreed}
    Sleep                            2
    Input Text                       ${textfieldWeightRegistration}         25
    Sleep                            2
    Click Element                    ${sexRegistration}
    Sleep                            2
    Wait Until Element Is Visible    ${validateScreenSexRegistration}
    Sleep                            2
    Click Element                    ${femaleSex}
    Sleep                            2
    Input Text                       ${textfieldDateOfBirthRegistration}    10022020
    Sleep                            2


Então o pet é cadastrado - Android
    Click Element    ${registerButton}
    Sleep            4

Quando entrar na tela de meus pets - Android
    Wait Until Element Is Visible    ${homeMyPets}
    Click Element                    ${homeMyPets}
    Sleep                            1
    Page Should Contain Text         Meus Pets

Então irei excluir os pets cadastrados - Android
    FOR                 ${index}                         IN RANGE                            5
    ${checkElement}=    Run Keyword and Return Status    Wait Until Page Contains Element    ${editPets}
    LOG                 ${checkElement}
    IF                  ${checkElement} == True          
    Click Element       ${editPets}
    Swipe by percent    50.18                            46.87                               50.18          18.22
    Click Element       ${deletePets}
    Sleep               1
    Click Element       ${confirmPetExclusion}
    Sleep               2
    ELSE
    Sleep               1
    # Page Should Contain Text                Você ainda não tem pet cadastrado
    END
    END

Então recebo a mensagem de erro - Android
    Wait Until Page Contains    Campo obrigatório

Quando nao inserir dados e apenas cadastrar - Android
    Sleep                            2
    Click Element                    ${registerPet}
    Wait Until ELement Is Visible    ${validateRegistrationScreen}
    Run Keyword                      Validar tela de Cadastro - Android
    Click Element                    ${registerButton}
    Sleep                            2

Quando nao preencher o nome do cachorro macho - Android
    Sleep                            2
    Click Element                    ${registerPet}
    Wait Until ELement Is Visible    ${validateRegistrationScreen}
    Run Keyword                      Validar tela de Cadastro - Android
    Click Element                    ${typeOfPetRegistration}
    Wait Until ELement Is Visible    ${validatesTypeOfPet}
    Click Element                    ${dog}
    Sleep                            2
    Click Element                    ${animalBreedRegistration}
    Sleep                            2
    Click Text                       ${firstDogBreed}
    Sleep                            2
    Input Text                       ${textfieldWeightRegistration}         25
    Sleep                            2
    Click Element                    ${sexRegistration}
    Sleep                            2
    Wait Until Element Is Visible    ${validateScreenSexRegistration}
    Sleep                            2
    Click Element                    ${maleSex}
    Sleep                            2
    Input Text                       ${textfieldDateOfBirthRegistration}    10022020
    Sleep                            2
    Run Keyword                      Então o pet é cadastrado - Android

Quando nao preencher o nome do cachorro femea - Android
    Sleep                            2
    Click Element                    ${registerPet}
    Wait Until ELement Is Visible    ${validateRegistrationScreen}
    Run Keyword                      Validar tela de Cadastro - Android
    Click Element                    ${typeOfPetRegistration}
    Wait Until ELement Is Visible    ${validatesTypeOfPet}
    Click Element                    ${dog}
    Sleep                            2
    Click Element                    ${animalBreedRegistration}
    Sleep                            2
    Click Text                       ${firstDogBreed}
    Sleep                            2
    Input Text                       ${textfieldWeightRegistration}         20
    Sleep                            2
    Click Element                    ${sexRegistration}
    Sleep                            2
    Wait Until Element Is Visible    ${validateScreenSexRegistration}
    Sleep                            2
    Click Element                    ${femaleSex}
    Sleep                            2
    Input Text                       ${textfieldDateOfBirthRegistration}    10022020
    Run Keyword                      Então o pet é cadastrado - Android

Quando nao preencher o nome do gato macho - Android
    Sleep                            2
    Click Element                    ${registerPet}
    Wait Until ELement Is Visible    ${validateRegistrationScreen}
    Run Keyword                      Validar tela de Cadastro - Android
    Click Element                    ${typeOfPetRegistration}
    Wait Until ELement Is Visible    ${validatesTypeOfPet}
    Click Element                    ${cat}
    Sleep                            2
    Click Element                    ${animalBreedRegistration}
    Sleep                            2
    Click Text                       ${firstCatBreed}
    Sleep                            2
    Input Text                       ${textfieldWeightRegistration}         25
    Sleep                            2
    Click Element                    ${sexRegistration}
    Sleep                            2
    Wait Until Element Is Visible    ${validateScreenSexRegistration}
    Sleep                            2
    Click Element                    ${maleSex}
    Sleep                            2
    Input Text                       ${textfieldDateOfBirthRegistration}    10022020
    Sleep                            2
    Run Keyword                      Então o pet é cadastrado - Android

Quando nao preencher o nome do gato femea - Android
    Sleep                            2
    Click Element                    ${registerPet}
    Wait Until ELement Is Visible    ${validateRegistrationScreen}
    Run Keyword                      Validar tela de Cadastro - Android
    Click Element                    ${typeOfPetRegistration}
    Wait Until ELement Is Visible    ${validatesTypeOfPet}
    Click Element                    ${cat}
    Sleep                            2
    Click Element                    ${animalBreedRegistration}
    Sleep                            2
    Click Text                       ${firstCatBreed}
    Sleep                            2
    Input Text                       ${textfieldWeightRegistration}         25
    Sleep                            2
    Click Element                    ${sexRegistration}
    Sleep                            2
    Wait Until Element Is Visible    ${validateScreenSexRegistration}
    Sleep                            2
    Click Element                    ${femaleSex}
    Sleep                            2
    Input Text                       ${textfieldDateOfBirthRegistration}    10022020
    Sleep                            2
    Run Keyword                      Então o pet é cadastrado - Android

Quando nao preencher o tipo de pet - Android
    Sleep                            2
    Click Element                    ${registerPet}
    Wait Until ELement Is Visible    ${validateRegistrationScreen}
    Run Keyword                      Validar tela de Cadastro - Android
    ${name}                          FakerLibrary.Name
    Input Text                       ${fieldNameRegistration}               ${name}
    Sleep                            2
    Input Text                       ${textfieldWeightRegistration}         25
    Sleep                            2
    Click Element                    ${sexRegistration}
    Sleep                            2
    Wait Until Element Is Visible    ${validateScreenSexRegistration}
    Sleep                            2
    Click Element                    ${maleSex}
    Sleep                            2
    Input Text                       ${textfieldDateOfBirthRegistration}    10022020
    Sleep                            2
    Run Keyword                      Então o pet é cadastrado - Android

Quando nao preencher a raça - Android
    Sleep                            2
    Click Element                    ${registerPet}
    Wait Until ELement Is Visible    ${validateRegistrationScreen}
    Run Keyword                      Validar tela de Cadastro - Android
    ${name}                          FakerLibrary.Name
    Input Text                       ${fieldNameRegistration}               ${name}
    Click Element                    ${typeOfPetRegistration}
    Wait Until ELement Is Visible    ${validatesTypeOfPet}
    Click Element                    ${cat}
    Sleep                            2
    Input Text                       ${textfieldWeightRegistration}         25
    Sleep                            2
    Click Element                    ${sexRegistration}
    Sleep                            2
    Wait Until Element Is Visible    ${validateScreenSexRegistration}
    Sleep                            2
    Click Element                    ${femaleSex}
    Sleep                            2
    Input Text                       ${textfieldDateOfBirthRegistration}    10022020
    Sleep                            2
    Run Keyword                      Então o pet é cadastrado - Android

Quando nao preencher o peso - Android
    Sleep                            2
    Click Element                    ${registerPet}
    Wait Until ELement Is Visible    ${validateRegistrationScreen}
    Run Keyword                      Validar tela de Cadastro - Android
    ${name}                          FakerLibrary.Name
    Input Text                       ${fieldNameRegistration}               ${name}
    Click Element                    ${typeOfPetRegistration}
    Wait Until ELement Is Visible    ${validatesTypeOfPet}
    Click Element                    ${cat}
    Sleep                            2
    Click Element                    ${animalBreedRegistration}
    Sleep                            2
    Click Text                       ${firstCatBreed}
    Sleep                            2
    Click Element                    ${sexRegistration}
    Sleep                            2
    Wait Until Element Is Visible    ${validateScreenSexRegistration}
    Sleep                            2
    Click Element                    ${femaleSex}
    Sleep                            2
    Input Text                       ${textfieldDateOfBirthRegistration}    10022020
    Sleep                            2
    Run Keyword                      Então o pet é cadastrado - Android

Quando nao preencher o sexo - Android
    Sleep                            2
    Click Element                    ${registerPet}
    Wait Until ELement Is Visible    ${validateRegistrationScreen}
    Run Keyword                      Validar tela de Cadastro - Android
    ${name}                          FakerLibrary.Name
    Input Text                       ${fieldNameRegistration}               ${name}
    Click Element                    ${typeOfPetRegistration}
    Wait Until ELement Is Visible    ${validatesTypeOfPet}
    Click Element                    ${cat}
    Sleep                            2
    Click Element                    ${animalBreedRegistration}
    Sleep                            2
    Click Text                       ${firstCatBreed}
    Sleep                            2
    Input Text                       ${textfieldWeightRegistration}         25
    Sleep                            2
    Input Text                       ${textfieldDateOfBirthRegistration}    10022020
    Sleep                            2
    Run Keyword                      Então o pet é cadastrado - Android

Quando nao preencher o nascimento - Android
    Sleep                            2
    Click Element                    ${registerPet}
    Wait Until ELement Is Visible    ${validateRegistrationScreen}
    Run Keyword                      Validar tela de Cadastro - Android
    ${name}                          FakerLibrary.Name
    Input Text                       ${fieldNameRegistration}              ${name}
    Click Element                    ${typeOfPetRegistration}
    Wait Until ELement Is Visible    ${validatesTypeOfPet}
    Click Element                    ${cat}
    Sleep                            2
    Click Element                    ${animalBreedRegistration}
    Sleep                            2
    Click Text                       ${firstCatBreed}
    Sleep                            2
    Input Text                       ${textfieldWeightRegistration}        25
    Sleep                            2
    Click Element                    ${sexRegistration}
    Sleep                            2
    Wait Until Element Is Visible    ${validateScreenSexRegistration}
    Sleep                            2
    Click Element                    ${femaleSex}
    Sleep                            2
    Run Keyword                      Então o pet é cadastrado - Android


Cadastrar pet - Android
    Run Keyword                 Quando inserir dados validos de um cachorro macho - Android
    Run Keyword                 Então o pet é cadastrado - Android
    Wait Until Page Contains    Selecione o pet que será atendido

Quando realizar um agendamento sem profissional de preferencia - Android
    Run Keyword                      Cadastrar pet - Android
    Wait Until ELement Is Visible    ${choosePet}
    Click Element                    ${choosePet}
    Sleep                            1
    Click Element                    ${selectPet}
    Wait Until Page Contains         Selecione o local de atendimento
    Wait Until ELement Is Visible    ${validateFavoriteStore}
    Click Element                    ${selectStore}
    Wait Until Element Is Visible    ${validateScheduleScreen}
    Wait Until Element Is Visible    ${scheduleButtonContinue}
    Click Element                    ${scheduleButtonContinue}
    Wait Until Element Is Visible    ${validateProfessionalsScreen}
    Wait Until Element Is Visible    ${validateScheduleScreen}
    Wait Until Page Contains         Sem preferência de profissional
    Click Text                       Sem preferência de profissional
    Wait Until Page Contains         Selecione a data
    Click Text                       31
    Wait Until Page Contains         Selecione o horário
    Click Element                    ${firstTime}
    Wait Until Element Is Visible    ${validateScheduleScreen}
    Wait Until Element Is Visible    ${scheduleButtonContinue}
    Click Element                    ${scheduleButtonContinue}
    Run Keyword                      Validar confirmação de agendamento - Android
    Wait Until Element Is Visible    ${finalizeAppointment}
    Click Element                    ${finalizeAppointment}
    FOR                              ${index}                                        IN RANGE                    1
    ${checkElement}=                 Run Keyword and Return Status                   Wait Until Page Contains    Allow
    LOG                              ${checkElement}
    IF                               ${checkElement} == True                         
    Click Text                       Allow
    Wait Until Page Contains         Seu serviço foi agendado com sucesso
    ELSE
    Wait Until Page Contains         Seu serviço foi agendado com sucesso
    END
    END

Então vejo na tela a confirmação do agendamento - Android
    Run Keyword    Validar que o serviço foi agendado com sucesso - Android

Validar confirmação de agendamento - Android
    Wait Until Page Contains    Selecione a forma de pagamento
    Wait Until Page Contains    Li e aceito os Termos de Serviço do Petz Estética
    Wait Until Page Contains    Resumo do agendamento
    Wait Until Page Contains    Loja
    Wait Until Page Contains    Data
    Wait Until Page Contains    Horário
    Wait Until Page Contains    Profissional

Validar que o serviço foi agendado com sucesso - Android
    Wait Until Page Contains    Número de protocolo
    Wait Until Page Contains    Meus agendamentos
    Wait Until Page Contains    Resumo do agendamento
    Wait Until Page Contains    Detalhes do agendamento
    Wait Until Page Contains    Loja
    Wait Until Page Contains    Data
    Wait Until Page Contains    Horário
    Wait Until Page Contains    Profissional               

Quando realizar um agendamento avulso banho mais um servico sem profissional de preferencia - Android
    Run Keyword                      Cadastrar pet - Android
    Wait Until ELement Is Visible    ${choosePet}
    Click Element                    ${choosePet}
    Sleep                            1
    Click Element                    ${selectPet}
    Wait Until Page Contains         Selecione o local de atendimento
    Wait Until ELement Is Visible    ${validateFavoriteStore}
    Click Element                    ${selectStore}
    Wait Until Element Is Visible    ${validateScheduleScreen}
    Click Text                       Tosa e remoção
    Wait Until Page Contains         Remoção de subpelos
    Click Text                       Remoção de subpelos
    Wait Until Element Is Visible    ${scheduleButtonContinue}
    Click Element                    ${scheduleButtonContinue}
    Wait Until Element Is Visible    ${validateProfessionalsScreen}
    Wait Until Element Is Visible    ${validateScheduleScreen}
    Wait Until Page Contains         Sem preferência de profissional
    Click Text                       Sem preferência de profissional
    Wait Until Page Contains         Selecione a data
    Click Text                       31
    Wait Until Page Contains         Selecione o horário
    Click Element                    ${firstTime}
    Wait Until Element Is Visible    ${validateScheduleScreen}
    Wait Until Element Is Visible    ${scheduleButtonContinue}
    Click Element                    ${scheduleButtonContinue}
    Run Keyword                      Validar confirmação de agendamento - Android
    Wait Until Element Is Visible    ${finalizeAppointment}
    Click Element                    ${finalizeAppointment}
    FOR                              ${index}                                        IN RANGE                    1
    ${checkElement}=                 Run Keyword and Return Status                   Wait Until Page Contains    Allow
    LOG                              ${checkElement}
    IF                               ${checkElement} == True                         
    Click Text                       Allow
    Wait Until Page Contains         Seu serviço foi agendado com sucesso
    ELSE
    Wait Until Page Contains         Seu serviço foi agendado com sucesso
    END
    END

Quando realizar um agendamento avulso banho mais dois servicos sem profissional de preferencia - Android
    Run Keyword                      Cadastrar pet - Android
    Wait Until ELement Is Visible    ${choosePet}
    Click Element                    ${choosePet}
    Sleep                            1
    Click Element                    ${selectPet}
    Wait Until Page Contains         Selecione o local de atendimento
    Wait Until ELement Is Visible    ${validateFavoriteStore}
    Click Element                    ${selectStore}
    Wait Until Element Is Visible    ${validateScheduleScreen}
    Click Text                       Tosa e remoção
    Wait Until Page Contains         Remoção de subpelos
    Click Text                       Remoção de subpelos
    Click Text                       Hidratação
    Wait Until Page Contains         Hidratação argan
    Click Text                       Hidratação argan
    Swipe by percent                 50.18                                           46.87                       50.18    18.22
    Wait Until Page Contains         Tonalizante
    Click Text                       Tonalizante
    Wait Until Page Contains         Tonalizante para pelo branco
    Click Text                       Tonalizante para pelo branco
    Wait Until Element Is Visible    ${scheduleButtonContinue}
    Click Element                    ${scheduleButtonContinue}
    Wait Until Element Is Visible    ${validateProfessionalsScreen}
    Wait Until Element Is Visible    ${validateScheduleScreen}
    Wait Until Page Contains         Sem preferência de profissional
    Click Text                       Sem preferência de profissional
    Wait Until Page Contains         Selecione a data
    Click Text                       31
    Wait Until Page Contains         Selecione o horário
    Click Element                    ${firstTime}
    Wait Until Element Is Visible    ${validateScheduleScreen}
    Wait Until Element Is Visible    ${scheduleButtonContinue}
    Click Element                    ${scheduleButtonContinue}
    Run Keyword                      Validar confirmação de agendamento - Android
    Wait Until Element Is Visible    ${finalizeAppointment}
    Click Element                    ${finalizeAppointment}
    FOR                              ${index}                                        IN RANGE                    1
    ${checkElement}=                 Run Keyword and Return Status                   Wait Until Page Contains    Allow
    LOG                              ${checkElement}
    IF                               ${checkElement} == True                         
    Click Text                       Allow
    Wait Until Page Contains         Seu serviço foi agendado com sucesso
    ELSE
    Wait Until Page Contains         Seu serviço foi agendado com sucesso
    END
    END

Quando realizar um agendamento com profissional de preferencia - Android
    Run Keyword                      Cadastrar pet - Android
    Wait Until ELement Is Visible    ${choosePet}
    Click Element                    ${choosePet}
    Sleep                            1
    Click Element                    ${selectPet}
    Wait Until Page Contains         Selecione o local de atendimento
    Wait Until ELement Is Visible    ${validateFavoriteStore}
    Click Element                    ${selectStore}
    Wait Until Element Is Visible    ${validateScheduleScreen}
    Wait Until Element Is Visible    ${scheduleButtonContinue}
    Click Element                    ${scheduleButtonContinue}
    Wait Until Element Is Visible    ${validateProfessionalsScreen}
    Wait Until Element Is Visible    ${validateScheduleScreen}
    Wait Until Page Contains         Faça o agendamento
    Click Text                       Heitor Pietro Bernardes
    Wait Until Page Contains         Selecione a data
    Click Text                       31
    Wait Until Page Contains         Selecione o horário
    Click Element                    ${firstTime}
    Wait Until Element Is Visible    ${validateScheduleScreen}
    Wait Until Element Is Visible    ${scheduleButtonContinue}
    Click Element                    ${scheduleButtonContinue}
    Run Keyword                      Validar confirmação de agendamento - Android
    Wait Until Element Is Visible    ${finalizeAppointment}
    Click Element                    ${finalizeAppointment}
    FOR                              ${index}                                        IN RANGE                    1
    ${checkElement}=                 Run Keyword and Return Status                   Wait Until Page Contains    Allow
    LOG                              ${checkElement}
    IF                               ${checkElement} == True                         
    Click Text                       Allow
    Wait Until Page Contains         Seu serviço foi agendado com sucesso
    ELSE
    Wait Until Page Contains         Seu serviço foi agendado com sucesso
    END
    END

Quando realizar um agendamento avulso banho mais um servico com profissional de preferencia - Android
    Run Keyword                      Cadastrar pet - Android
    Wait Until ELement Is Visible    ${choosePet}
    Click Element                    ${choosePet}
    Sleep                            1
    Click Element                    ${selectPet}
    Wait Until Page Contains         Selecione o local de atendimento
    Wait Until ELement Is Visible    ${validateFavoriteStore}
    Click Element                    ${selectStore}
    Wait Until Element Is Visible    ${validateScheduleScreen}
    Click Text                       Tosa e remoção
    Wait Until Page Contains         Remoção de subpelos
    Click Text                       Remoção de subpelos
    Wait Until Element Is Visible    ${scheduleButtonContinue}
    Click Element                    ${scheduleButtonContinue}
    Wait Until Element Is Visible    ${validateProfessionalsScreen}
    Wait Until Element Is Visible    ${validateScheduleScreen}
    Wait Until Page Contains         Faça o agendamento
    Click Text                       Heitor Pietro Bernardes
    Wait Until Page Contains         Selecione a data
    Click Text                       31
    Wait Until Page Contains         Selecione o horário
    Click Element                    ${firstTime}
    Wait Until Element Is Visible    ${validateScheduleScreen}
    Wait Until Element Is Visible    ${scheduleButtonContinue}
    Click Element                    ${scheduleButtonContinue}
    Run Keyword                      Validar confirmação de agendamento - Android
    Wait Until Element Is Visible    ${finalizeAppointment}
    Click Element                    ${finalizeAppointment}
    FOR                              ${index}                                        IN RANGE                    1
    ${checkElement}=                 Run Keyword and Return Status                   Wait Until Page Contains    Allow
    LOG                              ${checkElement}
    IF                               ${checkElement} == True                         
    Click Text                       Allow
    Wait Until Page Contains         Seu serviço foi agendado com sucesso
    ELSE
    Wait Until Page Contains         Seu serviço foi agendado com sucesso
    END
    END

Quando realizar um agendamento avulso banho mais dois servicos com profissional de preferencia - Android
    Run Keyword                      Cadastrar pet - Android
    Wait Until ELement Is Visible    ${choosePet}
    Click Element                    ${choosePet}
    Sleep                            1
    Click Element                    ${selectPet}
    Wait Until Page Contains         Selecione o local de atendimento
    Wait Until ELement Is Visible    ${validateFavoriteStore}
    Click Element                    ${selectStore}
    Wait Until Element Is Visible    ${validateScheduleScreen}
    Click Text                       Tosa e remoção
    Wait Until Page Contains         Remoção de subpelos
    Click Text                       Remoção de subpelos
    Click Text                       Hidratação
    Wait Until Page Contains         Hidratação argan
    Click Text                       Hidratação argan
    Swipe by percent                 50.18                                           46.87                       50.18    18.22
    Wait Until Page Contains         Tonalizante
    Click Text                       Tonalizante
    Wait Until Page Contains         Tonalizante para pelo branco
    Click Text                       Tonalizante para pelo branco
    Wait Until Element Is Visible    ${scheduleButtonContinue}
    Click Element                    ${scheduleButtonContinue}
    Wait Until Element Is Visible    ${validateProfessionalsScreen}
    Wait Until Element Is Visible    ${validateScheduleScreen}
    Wait Until Page Contains         Faça o agendamento
    Click Text                       Heitor Pietro Bernardes
    Wait Until Page Contains         Selecione a data
    Click Text                       31
    Wait Until Page Contains         Selecione o horário
    Click Element                    ${firstTime}
    Wait Until Element Is Visible    ${validateScheduleScreen}
    Wait Until Element Is Visible    ${scheduleButtonContinue}
    Click Element                    ${scheduleButtonContinue}
    Run Keyword                      Validar confirmação de agendamento - Android
    Wait Until Element Is Visible    ${finalizeAppointment}
    Click Element                    ${finalizeAppointment}
    FOR                              ${index}                                        IN RANGE                    1
    ${checkElement}=                 Run Keyword and Return Status                   Wait Until Page Contains    Allow
    LOG                              ${checkElement}
    IF                               ${checkElement} == True                         
    Click Text                       Allow
    Wait Until Page Contains         Seu serviço foi agendado com sucesso
    ELSE
    Wait Until Page Contains         Seu serviço foi agendado com sucesso
    END
    END

Quando existir agendamentos
    Wait Until Page Contains Element    ${cancel}

Então irei cancelá-los
    FOR                         ${index}                             IN RANGE                            5
    ${checkElement}=            Run Keyword and Return Status        Wait Until Page Contains Element    ${cancel}
    LOG                         ${checkElement}
    IF                          ${checkElement} == True              
    Click Element               ${cancel}
    Wait Until Page Contains    Deseja cancelar este agendamento?
    Click Text                  Sim
    Wait Until Page Contains    Filtrar
    Swipe by percent            50.18                                46.87                               50.18        18.22
    ELSE
    Swipe by percent            50.18                                46.87                               50.18        18.22
    END
    END
