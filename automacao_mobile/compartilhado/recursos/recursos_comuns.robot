Documentation 
...Suíte com recursos comuns de sistema
...Recursos usados em todos os cenários  

*** Settings ***
Library     AppiumLibrary

*** Variables ***
#Android
${URL}                    http://localhost:4723/wd/hub
${deviceAndroid}          Android Emulator
${apk}                    ${EXECDIR}/automacao_mobile/compartilhado/recursos/app/Petz-android.apk

#Ios
${deviceIOS}              iPhone 13 Pro Max
${app}                    ${EXECDIR}/automacao_mobile/compartilhado/recursos/app/Petz-STG.app

*** Keywords ***

Abrir Aplicativo
    Set Appium Timeout  20
    Run Keyword if  "${device}" == "android"
    ...     Start Android
    Run Keyword if  "${device}" == "ios"
    ...     Start IOS

Fechar Aplicativo
    Close Application

Start Android
    Open Application    ${URL}
    ...                 automationName=UIAutomator2
    ...                 platformName=Android
    ...                 deviceName=${deviceAndroid}
    ...                 app=${apk}
    ...                 udid=emulator-5554
    ...                 autoGrantPermissions=true
 
Start IOS
    Open Application    ${URL}
    ...                 automationName=XCUITest
    ...                 platformName=ios
    ...                 platformVersion=15.4
    ...                 deviceName=${deviceIOS}
    ...                 app=${app}
    ...                 udid=10CE25C3-1E23-4884-8479-C93A85690116
    ...                 autoGrantPermissions=true