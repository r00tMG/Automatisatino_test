*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${boutonFinish}    id:finish

*** Keywords ***
Finir la commande
    Click Button    ${boutonFinish}