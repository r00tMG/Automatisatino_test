*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${chpFinish}    id:finish
${chpSucces}    class:complete-header
${msgSucces}    Thank you for your order!
*** Keywords ***
Cliquer sur Finish pour pouvoir commander
    Click Element    ${chpFinish}
Vérifier que la commande est bien exécutée
    Wait Until Element Contains    ${chpSucces}    ${msgSucces}
    Sleep    3s

