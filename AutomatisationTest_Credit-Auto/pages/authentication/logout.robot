*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${idBtnDeconnexion}    id:lnkDeconnexion

*** Keywords ***
Cliquer sur le bouton de deconnexion
    Click Element    ${idBtnDeconnexion}
    Log To Console    Vous êtes deconnecté