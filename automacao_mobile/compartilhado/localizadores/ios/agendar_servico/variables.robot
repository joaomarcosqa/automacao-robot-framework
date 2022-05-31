Documentation
... Suíte com variáveis de login do sistema

*** Variable ***
#Cadastro pets
${validateRegistrationScreen}          //XCUIElementTypeStaticText[@name="Cadastrar pet"]
${fieldNameRegistration}               //XCUIElementTypeApplication[@name="Petz"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeTextField[1]
${typeOfPetRegistration}               //XCUIElementTypeApplication[@name="Petz"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeTextField[2]
${validatesTypeOfPet}                  //XCUIElementTypeApplication[@name="Petz"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypePicker/XCUIElementTypePickerWheel
${dog}                                 *//XCUIElementTypeApplication[@name="Petz"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypePicker/XCUIElementTypePickerWheel/XCUIElementTypeOther[1]
${registerPet}                         //XCUIElementTypeStaticText[@name="Cadastrar pet"]
${cat}                                 *//XCUIElementTypeApplication[@name="Petz"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypePicker/XCUIElementTypePickerWheel/XCUIElementTypeOther[1]
${selectRegistration}                  //XCUIElementTypeButton[@name="Selecionar"]
${animalBreedRegistration}             //XCUIElementTypeApplication[@name="Petz"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeTextField[3]
${textfieldWeightRegistration}         //XCUIElementTypeApplication[@name="Petz"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeTextField[4]
${sexRegistration}                     //XCUIElementTypeApplication[@name="Petz"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeTextField[5]
${validateScreenSexRegistration}       //XCUIElementTypeApplication[@name="Petz"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypePicker/XCUIElementTypePickerWheel
${femaleSex}                           *//XCUIElementTypeApplication[@name="Petz"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypePicker/XCUIElementTypePickerWheel/XCUIElementTypeOther[1]
${maleSex}                             *//XCUIElementTypeApplication[@name="Petz"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypePicker/XCUIElementTypePickerWheel/XCUIElementTypeOther[1]
${textfieldDateOfBirthRegistration}    //XCUIElementTypeApplication[@name="Petz"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeTextField[6]
${microchipRegistration}               //XCUIElementTypeApplication[@name="Petz"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther[1]/XCUIElementTypeTextField[7]
${registerButton}                      //XCUIElementTypeButton[@name="Cadastrar"]
${validateRegistrationError}           //XCUIElementTypeAlert[@name="Atenção"]/XCUIElementTypeOther/XCUIElementTypeOther

#Excluir pets
${editPets}               //XCUIElementTypeApplication[@name="Petz"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[1]/XCUIElementTypeImage[2]
${myPetEdit}              //XCUIElementTypeButton[@name="Editar"]
${deletePets}             //XCUIElementTypeButton[@name="Inativar"]
${confirmPetExclusion}    //XCUIElementTypeButton[@name="Sim"]
${validateMyPets}         //XCUIElementTypeNavigationBar[@name="Meus pets"]

#Home
${homeMyPets}              //XCUIElementTypeApplication[@name="Petz"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[5]
${validateMyPetsScreen}    //XCUIElementTypeStaticText[@name="Meus pets"]
${homeBathAndGroom}        //XCUIElementTypeButton[@name="Banho e Tosa"]

#Agendamento
${choosePet}               //XCUIElementTypeApplication[@name="Petz"]/XCUIElementTypeWindow/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeScrollView/XCUIElementTypeOther/XCUIElementTypeOther[1]/XCUIElementTypeCollectionView/XCUIElementTypeCell[1]/XCUIElementTypeOther
${selectPet}               //XCUIElementTypeButton[@name="Selecionar"]
${validateNearestStore}    //XCUIElementTypeStaticText[@name="Loja mais próxima"]
${selectStore}             //XCUIElementTypeButton[@name="Selecionar"]
${enableLocation}          Permitir Durante o Uso do App
${seeMoreStores}           //XCUIElementTypeStaticText[@name="Ver mais lojas"]

#Favoritar
${favoriteStore}    //XCUIElementTypeButton[@name="favorite store"]
${favoriteStore}    //XCUIElementTypeButton[@name="favorite store filled"]
