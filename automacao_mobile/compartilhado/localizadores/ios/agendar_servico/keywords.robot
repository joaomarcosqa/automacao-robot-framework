Documentation
... Suíte com palavras chave de agendamento

*** Settings ***
Library    AppiumLibrary
Library    FakerLibrary     locale=pt_BR

*** Keywords ***
Validar tela de Cadastro
    Wait Until Page Contains    Adicionar foto
    Wait Until Page Contains    Cadastrar
    Wait Until Page Contains    Cadastrar pet

Quando inserir dados validos de um cachorro macho
    Sleep                            2
    Click Element                    ${registerPet}
    Wait Until ELement Is Visible    ${validateRegistrationScreen}
    Run Keyword                      Validar tela de Cadastro
    ${name}                          FakerLibrary.Name
    Input Text                       ${fieldNameRegistration}               ${name}
    Click Element                    ${typeOfPetRegistration}
    Wait Until ELement Is Visible    ${validatesTypeOfPet}
    # Click Element                    ${dog}
    Click Element                    ${selectRegistration}
    Sleep                            2
    Click Element                    ${animalBreedRegistration}
    Sleep                            2
    Click Element                    ${selectRegistration}
    Sleep                            2
    Input Text                       ${textfieldWeightRegistration}         25
    Sleep                            2
    Click Element                    ${sexRegistration}
    Sleep                            2
    Wait Until Element Is Visible    ${validateScreenSexRegistration}
    Sleep                            2
    Click Element                    ${selectRegistration}
    # Click Element                    ${maleSex}
    Sleep                            2
    Input Text                       ${textfieldDateOfBirthRegistration}    10022020
    Sleep                            2


Quando inserir dados validos de um cachorro femea
    Sleep                            2
    Click Element                    ${registerPet}
    Wait Until ELement Is Visible    ${validateRegistrationScreen}
    Run Keyword                      Validar tela de Cadastro
    ${name}                          FakerLibrary.Name
    Input Text                       ${fieldNameRegistration}               ${name}
    Click Element                    ${typeOfPetRegistration}
    Wait Until ELement Is Visible    ${validatesTypeOfPet}
    # Click Element                    ${dog}
    Click Element                    ${selectRegistration}
    Sleep                            2
    Click Element                    ${animalBreedRegistration}
    Sleep                            2
    Click Element                    ${selectRegistration}
    Sleep                            2
    Input Text                       ${textfieldWeightRegistration}         20
    Sleep                            2
    Click Element                    ${sexRegistration}
    Sleep                            2
    Wait Until Element Is Visible    ${validateScreenSexRegistration}
    Sleep                            2
    # Click Element                    ${femaleSex}
    Click Element                    ${selectRegistration}
    Sleep                            2
    Input Text                       ${textfieldDateOfBirthRegistration}    10022020
    Sleep                            2


Quando inserir dados validos de um gato macho
    Sleep                            2
    Click Element                    ${registerPet}
    Wait Until ELement Is Visible    ${validateRegistrationScreen}
    Run Keyword                      Validar tela de Cadastro
    ${name}                          FakerLibrary.Name
    Input Text                       ${fieldNameRegistration}               ${name}
    Click Element                    ${typeOfPetRegistration}
    Wait Until ELement Is Visible    ${validatesTypeOfPet}
    # Click Element                    ${cat}
    Click Element                    ${selectRegistration}
    Sleep                            2
    Click Element                    ${animalBreedRegistration}
    Sleep                            2
    Click Element                    ${selectRegistration}
    Sleep                            2
    Input Text                       ${textfieldWeightRegistration}         25
    Sleep                            2
    Click Element                    ${sexRegistration}
    Sleep                            2
    Wait Until Element Is Visible    ${validateScreenSexRegistration}
    Sleep                            2
     # Click Element                    ${maleSex}
    Click Element                    ${selectRegistration}
    Sleep                            2
    Input Text                       ${textfieldDateOfBirthRegistration}    10022020
    Sleep                            2


Quando inserir dados validos de um gato femea
    Sleep                            2
    Click Element                    ${registerPet}
    Wait Until ELement Is Visible    ${validateRegistrationScreen}
    Run Keyword                      Validar tela de Cadastro
    ${name}                          FakerLibrary.Name
    Input Text                       ${fieldNameRegistration}               ${name}
    Click Element                    ${typeOfPetRegistration}
    Wait Until ELement Is Visible    ${validatesTypeOfPet}
    # Click Element                    ${cat}
    Click Element                    ${selectRegistration}
    Sleep                            2
    Click Element                    ${animalBreedRegistration}
    Sleep                            2
    Click Element                    ${selectRegistration}
    Sleep                            2
    Input Text                       ${textfieldWeightRegistration}         25
    Sleep                            2
    Click Element                    ${sexRegistration}
    Sleep                            2
    Wait Until Element Is Visible    ${validateScreenSexRegistration}
    Sleep                            2
    # Click Element                    ${femaleSex}
    Click Element                    ${selectRegistration}
    Sleep                            2
    Input Text                       ${textfieldDateOfBirthRegistration}    10022020
    Sleep                            2

Então o pet é cadastrado
    Sleep            3
    Click Element    ${registerButton}
    Click Element    ${registerButton}
    Sleep            2

Quando entrar na tela de meus pets
    Wait Until Element Is Visible    ${homeMyPets}
    Click Element                    ${homeMyPets}
    Sleep                            1
    Wait Until Element Is Visible    ${validateMyPets}

Então irei excluir os pets cadastrados
    FOR                              ${index}                         IN RANGE                            5
    ${checkElement}=                 Run Keyword and Return Status    Wait Until Page Contains Element    ${editPets}
    LOG                              ${checkElement}
    IF                               ${checkElement} == True          
    Click Element                    ${editPets}
    Wait Until Element Is Visible    ${myPetEdit}
    Click Element                    ${myPetEdit}
    Swipe by percent                 50.18                            46.87                               50.18          18.22
    Click Element                    ${deletePets}
    Sleep                            1
    Click Element                    ${confirmPetExclusion}
    Sleep                            7
    ELSE
    Sleep                            1
    # Page Should Contain Text                Você ainda não tem pet cadastrado
    END
    END

Então recebo a mensagem de erro
    # Wait Until Element Is Visible    ${validateRegistrationError}
    Wait Until Page Contains    Atenção

Quando nao inserir dados e apenas cadastrar
    Sleep                            2
    Click Element                    ${registerPet}
    Wait Until ELement Is Visible    ${validateRegistrationScreen}
    Run Keyword                      Validar tela de Cadastro
    Click Element                    ${registerButton}
    Sleep                            2

Quando nao preencher o nome do cachorro macho
    Sleep                            2
    Click Element                    ${registerPet}
    Wait Until ELement Is Visible    ${validateRegistrationScreen}
    Run Keyword                      Validar tela de Cadastro
    Click Element                    ${typeOfPetRegistration}
    Wait Until ELement Is Visible    ${validatesTypeOfPet}
    # Click Element                    ${dog}
    Click Element                    ${selectRegistration}
    Click Element                    ${selectRegistration}
    Sleep                            2
    Click Element                    ${animalBreedRegistration}
    Sleep                            2
    Click Element                    ${selectRegistration}
    Sleep                            2
    Input Text                       ${textfieldWeightRegistration}         25
    Sleep                            2
    Click Element                    ${sexRegistration}
    Sleep                            2
    Wait Until Element Is Visible    ${validateScreenSexRegistration}
    Sleep                            2
    # Click Element                    ${maleSex}
    Click Element                    ${selectRegistration}
    Sleep                            2
    Input Text                       ${textfieldDateOfBirthRegistration}    10022020
    Sleep                            2
    Run Keyword                      Então o pet é cadastrado

Quando nao preencher o nome do cachorro femea
    Sleep                            2
    Click Element                    ${registerPet}
    Wait Until ELement Is Visible    ${validateRegistrationScreen}
    Run Keyword                      Validar tela de Cadastro
    Click Element                    ${typeOfPetRegistration}
    Wait Until ELement Is Visible    ${validatesTypeOfPet}
    # Click Element                    ${dog}
    Click Element                    ${selectRegistration}
    Click Element                    ${selectRegistration}
    Sleep                            2
    Click Element                    ${animalBreedRegistration}
    Sleep                            2
    Click Element                    ${selectRegistration}
    Sleep                            2
    Input Text                       ${textfieldWeightRegistration}         20
    Sleep                            2
    Click Element                    ${sexRegistration}
    Sleep                            2
    Wait Until Element Is Visible    ${validateScreenSexRegistration}
    Sleep                            2
    # Click Element                    ${femaleSex}
    Click Element                    ${selectRegistration}
    Sleep                            2
    Input Text                       ${textfieldDateOfBirthRegistration}    10022020
    Run Keyword                      Então o pet é cadastrado

Quando nao preencher o nome do gato macho
    Sleep                            2
    Click Element                    ${registerPet}
    Wait Until ELement Is Visible    ${validateRegistrationScreen}
    Run Keyword                      Validar tela de Cadastro
    Click Element                    ${typeOfPetRegistration}
    Wait Until ELement Is Visible    ${validatesTypeOfPet}
    # Click Element                    ${cat}
    Click Element                    ${selectRegistration}
    Click Element                    ${selectRegistration}
    Sleep                            2
    Click Element                    ${animalBreedRegistration}
    Sleep                            2
    Click Element                    ${selectRegistration}
    Sleep                            2
    Input Text                       ${textfieldWeightRegistration}         25
    Sleep                            2
    Click Element                    ${sexRegistration}
    Sleep                            2
    Wait Until Element Is Visible    ${validateScreenSexRegistration}
    Sleep                            2
    # Click Element                    ${maleSex}
    Click Element                    ${selectRegistration}
    Sleep                            2
    Input Text                       ${textfieldDateOfBirthRegistration}    10022020
    Sleep                            2
    Run Keyword                      Então o pet é cadastrado

Quando nao preencher o nome do gato femea
    Sleep                            2
    Click Element                    ${registerPet}
    Wait Until ELement Is Visible    ${validateRegistrationScreen}
    Run Keyword                      Validar tela de Cadastro
    Click Element                    ${typeOfPetRegistration}
    Wait Until ELement Is Visible    ${validatesTypeOfPet}
    # Click Element                    ${cat}
    Click Element                    ${selectRegistration}
    Click Element                    ${selectRegistration}
    Sleep                            2
    Click Element                    ${animalBreedRegistration}
    Sleep                            2
    Click Element                    ${selectRegistration}
    Sleep                            2
    Input Text                       ${textfieldWeightRegistration}         25
    Sleep                            2
    Click Element                    ${sexRegistration}
    Sleep                            2
    Wait Until Element Is Visible    ${validateScreenSexRegistration}
    Sleep                            2
    # Click Element                    ${femaleSex}
    Click Element                    ${selectRegistration}
    Sleep                            2
    Input Text                       ${textfieldDateOfBirthRegistration}    10022020
    Sleep                            2
    Run Keyword                      Então o pet é cadastrado

Quando nao preencher o tipo de pet
    Sleep                            2
    Click Element                    ${registerPet}
    Wait Until ELement Is Visible    ${validateRegistrationScreen}
    Run Keyword                      Validar tela de Cadastro
    ${name}                          FakerLibrary.Name
    Input Text                       ${fieldNameRegistration}               ${name}
    Sleep                            2
    Input Text                       ${textfieldWeightRegistration}         25
    Sleep                            2
    Click Element                    ${sexRegistration}
    Sleep                            2
    Wait Until Element Is Visible    ${validateScreenSexRegistration}
    Sleep                            2
    # Click Element                    ${maleSex}
    Click Element                    ${selectRegistration}
    Sleep                            2
    Input Text                       ${textfieldDateOfBirthRegistration}    10022020
    Sleep                            2
    Run Keyword                      Então o pet é cadastrado

Quando nao preencher a raça
    Sleep                            2
    Click Element                    ${registerPet}
    Wait Until ELement Is Visible    ${validateRegistrationScreen}
    Run Keyword                      Validar tela de Cadastro
    ${name}                          FakerLibrary.Name
    Input Text                       ${fieldNameRegistration}               ${name}
    Click Element                    ${typeOfPetRegistration}
    Wait Until ELement Is Visible    ${validatesTypeOfPet}
    # Click Element                    ${cat}
    Click Element                    ${selectRegistration}
    Sleep                            2
    Input Text                       ${textfieldWeightRegistration}         25
    Sleep                            2
    Click Element                    ${selectRegistration}
    Sleep                            2
    Wait Until Element Is Visible    ${validateScreenSexRegistration}
    Sleep                            2
    # Click Element                    ${femaleSex}
    Click Element                    ${selectRegistration}
    Sleep                            2
    Input Text                       ${textfieldDateOfBirthRegistration}    10022020
    Sleep                            2
    Run Keyword                      Então o pet é cadastrado

Quando nao preencher o peso
    Sleep                            2
    Click Element                    ${registerPet}
    Wait Until ELement Is Visible    ${validateRegistrationScreen}
    Run Keyword                      Validar tela de Cadastro
    ${name}                          FakerLibrary.Name
    Input Text                       ${fieldNameRegistration}               ${name}
    Click Element                    ${typeOfPetRegistration}
    Wait Until ELement Is Visible    ${validatesTypeOfPet}
    # Click Element                    ${cat}
    Click Element                    ${selectRegistration}
    Click Element                    ${selectRegistration}
    Sleep                            2
    Click Element                    ${animalBreedRegistration}
    Sleep                            2
    Click Element                    ${selectRegistration}
    Sleep                            2
    Click Element                    ${sexRegistration}
    Sleep                            2
    Wait Until Element Is Visible    ${validateScreenSexRegistration}
    Sleep                            2
    # Click Element                    ${femaleSex}
    Click Element                    ${selectRegistration}
    Sleep                            2
    Input Text                       ${textfieldDateOfBirthRegistration}    10022020
    Sleep                            2
    Run Keyword                      Então o pet é cadastrado

Quando nao preencher o sexo
    Sleep                            2
    Click Element                    ${registerPet}
    Wait Until ELement Is Visible    ${validateRegistrationScreen}
    Run Keyword                      Validar tela de Cadastro
    ${name}                          FakerLibrary.Name
    Input Text                       ${fieldNameRegistration}               ${name}
    Click Element                    ${typeOfPetRegistration}
    Wait Until ELement Is Visible    ${validatesTypeOfPet}
    # Click Element                    ${cat}
    Click Element                    ${selectRegistration}
    Click Element                    ${selectRegistration}
    Sleep                            2
    Click Element                    ${animalBreedRegistration}
    Sleep                            2
    Click Element                    ${selectRegistration}
    Sleep                            2
    Input Text                       ${textfieldWeightRegistration}         25
    Sleep                            2
    Input Text                       ${textfieldDateOfBirthRegistration}    10022020
    Sleep                            2
    Run Keyword                      Então o pet é cadastrado

Quando nao preencher o nascimento
    Sleep                            2
    Click Element                    ${registerPet}
    Wait Until ELement Is Visible    ${validateRegistrationScreen}
    Run Keyword                      Validar tela de Cadastro
    ${name}                          FakerLibrary.Name
    Input Text                       ${fieldNameRegistration}            ${name}
    Click Element                    ${typeOfPetRegistration}
    Wait Until ELement Is Visible    ${validatesTypeOfPet}
    # Click Element                    ${cat}
    Click Element                    ${selectRegistration}
    Click Element                    ${selectRegistration}
    Sleep                            2
    Click Element                    ${animalBreedRegistration}
    Sleep                            2
    Click Element                    ${selectRegistration}
    Sleep                            2
    Input Text                       ${textfieldWeightRegistration}      25
    Sleep                            2
    Click Element                    ${sexRegistration}
    Sleep                            2
    Wait Until Element Is Visible    ${validateScreenSexRegistration}
    Sleep                            2
    # Click Element                    ${femaleSex}
    Click Element                    ${selectRegistration}
    Sleep                            2
    Run Keyword                      Então o pet é cadastrado


Cadastrar pet
    Run Keyword                 Quando inserir dados validos de um cachorro macho
    Run Keyword                 Então o pet é cadastrado
    Wait Until Page Contains    Selecione o pet que será atendido

Quando realizar um agendamento sem profissional de preferencia
    Run Keyword                      Cadastrar pet
    Click Element                    ${choosePet}
    Sleep                            1
    Click Element                    ${selectPet}
    Wait Until Page Contains         Selecione o local de atendimento
    Wait Until ELement Is Visible    ${validateNearestStore}
    Click Element                    ${selectStore}


