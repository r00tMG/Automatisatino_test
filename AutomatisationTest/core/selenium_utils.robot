*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.saucedemo.com/
${BROWSER}    Edge

*** Keywords ***
Ouvrir le navigateur
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Log To Console    Ouverture du navigateur ${BROWSER}


Fermer le navigateur
    Close Browser
    Log To Console    Fermeture du navigateur ${BROWSER}