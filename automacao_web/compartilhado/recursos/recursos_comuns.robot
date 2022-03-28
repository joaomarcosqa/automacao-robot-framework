Documentation 
...Suíte com recursos comuns de sistema
...Recursos usados em todos os cenários

*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${BROWSER}      chrome

*** Keywords ***

Abrir navegador
    Open Browser        about:blank   ${BROWSER}
    Maximize Browser Window

Fechar navegador
    Delete All Cookies
    Close Browser
    
    