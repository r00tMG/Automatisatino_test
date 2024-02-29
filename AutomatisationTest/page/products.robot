*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${chpLapsBackpak}   id:item_4_title_link

*** Keywords ***
Cliquer le sur produit Sauce Laps Backpak
    Click Element    ${chpLapsBackpak}