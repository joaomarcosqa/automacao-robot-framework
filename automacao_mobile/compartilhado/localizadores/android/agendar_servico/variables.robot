Documentation
... Suíte com variáveis de login do sistema

*** Variable ***

#Cadastro pets
${validateRegistrationScreen}          //android.widget.ImageView[contains(@resource-id, "br.com.petz:id/toolbar_icon")]
${fieldNameRegistration}               //android.widget.EditText[contains(@resource-id, "br.com.petz:id/edtPetName")]
${typeOfPetRegistration}               //android.widget.EditText[contains(@resource-id, "br.com.petz:id/edtPetType")]
${validatesTypeOfPet}                  //android.widget.TextView[contains(@text, "Tipo de pet")]
${dog}                                 //android.widget.TextView[contains(@text, "Cachorro")]
${registerPet}                         //android.widget.ImageView[contains(@resource-id, "br.com.petz:id/iv_add_pet_image")]
${cat}                                 //android.widget.TextView[contains(@text, "Gato")]
${animalBreedRegistration}             //android.widget.EditText[contains(@text, "Raça")]
${textfieldWeightRegistration}         //android.widget.EditText[contains(@text, "Peso (Kg)")]
${sexRegistration}                     //android.widget.EditText[contains(@text, "Sexo")]
${validateScreenSexRegistration}       //android.widget.TextView[contains(@text, "Sexo")]
${femaleSex}                           //android.widget.TextView[contains(@text, "Fêmea")]
${maleSex}                             //android.widget.TextView[contains(@text, "Macho")]
${textfieldDateOfBirthRegistration}    //android.widget.EditText[contains(@text, "Data de nascimento")]
${microchipRegistration}               //android.widget.EditText[contains(@text, "Microchip")]
${registerButton}                      //android.widget.Button[contains(@text, "Cadastrar")]
${firstDogBreed}                       AKITA INU
${firstCatBreed}                       BRASILEIRO REAL

#Excluir pets
${editPets}               //android.widget.ImageView[contains(@resource-id, "br.com.petz:id/ivEdit")]
${deletePets}             //android.widget.Button[contains(@resource-id, "br.com.petz:id/btnDeletePet")]
${confirmPetExclusion}    //android.widget.Button[contains(@text, "OK")]

#Home
${homeMyPets}              //android.view.ViewGroup[contains(@resource-id, "br.com.petz:id/cl_more_my_pets")]
${validateMyPetsScreen}    //android.widget.Button[contains(@text, "Meus Pets")]
${homeBathAndGroom}        //android.widget.FrameLayout[contains(@resource-id, "br.com.petz:id/navigation_grooming_home")]

#Agendamento
${choosePet}               //android.widget.ImageView[contains(@resource-id, "br.com.petz:id/iv_pet_photo")]
${selectPet}               //android.widget.Button[contains(@resource-id, "br.com.petz:id/btn_select")]
${validateNearestStore}    //android.widget.TextView[contains(@resource-id, "br.com.petz:id/tv_near_store_label")]
${selectStore}             //android.widget.RelativeLayout[contains(@resource-id ,"br.com.petz:id/btn_select")]
${seeMoreStores}            //XCUIElementTypeStaticText[@name="Ver mais lojas"]
${scheduleButtonContinue}    //android.widget.Button[contains(@resource-id, "br.com.petz:id/btn_next")]
${validateScheduleScreen}   //android.widget.TextView[contains(@resource-id, "br.com.petz:id/tv_schedule_summary_title")]
${validateProfessionalsScreen}            //android.widget.TextView[contains(@resource-id, "br.com.petz:id/tv_title")]
${noProfessionalPreference}             //android.widget.CheckBox[contains(resource-id, "br.com.petz:id/checkBox")]
${firstTime}                        //hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[1]/android.widget.TextView
${finalizeAppointment}              //android.widget.Button[contains(@resource-id , "br.com.petz:id/btn_next")]
${validateFavoriteStore}            //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.CheckBox


#Favoritar
${favoriteStore}    //android.widget.CheckBox[contains(@resource-id, "br.com.petz:id/cb_favorite")]

#Cancelamento Agendamento
${cancel}               //android.widget.Button[contains(@resource-id , "br.com.petz:id/btn_cancel")]

