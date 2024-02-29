*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${chpFirstName}    id:first-name
${chpLastName}    id:last-name
${chpCodePostal}    id:postal-code
${chpContinuer}    id:continue
## jdd
${firstname}       Meissa 
${lastname}    Gningue
${codePostal}    20054


*** Keywords ***
Renseigner le prenom (FirstName)
    Click Element    ${chpFirstName}
    Input Text    ${chpFirstName}    ${firstname}
Renseigner le nom (lastname)
    Click Element    ${chpLastName}
    Input Text    ${chpLastName}    ${lastname}
Renseigner le code postal
    Click Element    ${chpCodePostal}
    Input Text    ${chpCodePostal}    ${codePostal}
Cliquer sur continuer
    Click Element    ${chpContinuer}
