Documentation 
...Suíte com recursos comuns de sistema
...Recursos usados em todos os cenários

*** Settings ***
Library     AppiumLibrary

*** Variables ***
${platform}               Android
${device}                 emulator-5554
${package}                com.trinks.m
${activity}               crc643cb219e9c1e69672.SplashScreenActivity
${automation_name}        Uiautomator2

*** Keywords ***

Acessar Aplicativo
    Open Application     http://localhost:4723/wd/hub	    platformName=${platform}    	deviceName=${device} 	appPackage=${package}  	appActivity=${activity}       automationName=${automation_name}
    


Fechar Aplicativo
    Close Application
    