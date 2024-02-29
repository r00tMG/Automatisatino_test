*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${chmpUsername}    id:user-name
${chmpPassword}    id:password
${username}    standard_user
${password}    secret_sauce
${chpLogin}    id:login-button


*** Keywords ***
Renseigner le username
    Input Text    ${chmpUsername}    ${username}
Renseigner le mot de passe
    Input Text    ${chmpPassword}    ${password}
Cliquer sur le bouton Login
    Click Button    ${chpLogin}