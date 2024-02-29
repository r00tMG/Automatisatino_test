*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${msgConfirmation}    xpath:/html/body/div/div/div/div[2]/h2
${boutonBackHome}    id:back-to-products

*** Keywords ***
Verifier si la commande est complete avec succes
    Wait Until Element Is Visible    ${msgConfirmation}
Click sur le bouton back home
    Click Button    ${boutonBackHome}