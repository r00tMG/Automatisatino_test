*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.saucedemo.com/
${browser}    Edge

*** Keywords ***
Ouvrir le navigateur
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Log To Console    Navigateur ouvert    ${browser}
    
Fermer le navigateur
    #Sleep    10s
    Close Browser
    Log To Console    Navigateur fermé    ${browser}
