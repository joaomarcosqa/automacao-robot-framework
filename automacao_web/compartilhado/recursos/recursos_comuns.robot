Documentation 
...Suíte com recursos comuns de sistema
...Recursos usados em todos os cenários

*** Settings ***
Library    SeleniumLibrary
Library    String
Library    FakerLibrary       locale=pt_BR
Library    ../../../libs/UtilsLib.py

*** Variables ***
${BROWSER}      chrome

*** Keywords ***

Abrir navegador
    Open Browser        about:blank   ${BROWSER}
    Maximize Browser Window

Fechar navegador
    ${datacurrent}             Get Current Date
    Capture Page Screenshot    ${datacurrent}-test-evidence-.png
    Delete All Cookies
    Close window

Click and Scroll Item
    [Arguments]                      ${identifier}
    Wait Until Element Is Visible    ${identifier}                                  30
    ${position}                      Get Vertical Position                          ${identifier}
    Execute Javascript               window.scrollTo(0, window.scrollY + ${position})
    Click Element                    ${identifier}                                  

Scroll Item
    [Arguments]                      ${identifier}
    Wait Until Element Is Visible    ${identifier}                     30
    ${position}                      Get Vertical Position             ${identifier}
    Execute Javascript               window.scrollTo(${position},0)    
    