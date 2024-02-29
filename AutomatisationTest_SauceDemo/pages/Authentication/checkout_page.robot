*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${champFirstname}    id:first-name
${firstName}    Meissa
${lastName}    Gningue
${postalCode}    20250
${champLastname}    id:last-name
${champPostalCode}    id:postal-code
${boutonContinue}    id:continue
${xpathMsgErrorLastnameRequired}    xpath:/html/body/div/div/div/div[2]/div/form/div[1]/div[4]/h3

*** Keywords ***
Renseigner le firstname
    Input Text    ${champFirstname}    ${firstName}
Renseigner le lastName
    Input Text    ${champLastname}    ${lastName}
Renseigner le Code Postal
    Input Text    ${champPostalCode}    ${postalCode}
Cliquer sur le bouton continue
    Click Button    ${boutonContinue}
Message d'erreur pour un problem user
    Wait Until Element Is Visible    ${xpathMsgErrorLastnameRequired}
