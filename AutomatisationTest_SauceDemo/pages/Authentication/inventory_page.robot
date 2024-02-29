*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${champLabsFleeceJackets}    xpath:/html/body/div/div/div/div[2]/div/div/div/div[4]/div[2]/div[1]/a/div
${champLabsBackpack}    xpath:/html/body/div/div/div/div[2]/div/div/div/div[1]/div[2]/div[1]/a/div

*** Keywords ***
Appuyer sur le produit sauce labs fleece jackets
    Click Element    ${champLabsFleeceJackets}
Cliquer sur le produit labs backpack
    Click Element    ${champLabsBackpack}