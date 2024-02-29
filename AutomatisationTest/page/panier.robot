*** Settings ***
Library    SeleniumLibrary


*** Variables ***

${chpCheckout}    id:checkout

*** Keywords ***
Cliquer sur checkout pour commander le produit sélectionné
    Click Element    ${chpCheckout}