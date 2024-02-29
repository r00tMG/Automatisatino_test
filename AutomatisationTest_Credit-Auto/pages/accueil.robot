*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${idBtnAccesCreditAuto}    id:lnkAccesCreditAuto

*** Keywords ***
Cliquer sur le boutton "Acces Credit Auto"
    Click Link    ${idBtnAccesCreditAuto}