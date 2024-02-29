*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    http://credit-auto.qsiconseil.ma/
${browser}    Edge

*** Keywords ***
Ouvrir le navigateur
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Log To Console    Ouverture du navigateur

Fermer le navigateur
    Sleep    10s
    Close Browser
    Log To Console    Fermeture du navigateur
