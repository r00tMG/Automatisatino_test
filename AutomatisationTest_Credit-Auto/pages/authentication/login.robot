*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#ldap Administrateur Credit
${username_LDAP_Admin}    acd
${password_LDAP_Admin}    acial!acd2018

#ldap responsable credit
${username_LDAP_Responsable_Credit}     rcd
${password_LDAP_Responsable_Credit}     acial!rcd2018

#LDAP Gestionnaire Credit
${username_LDAP_Gestionnaire_Credit}    gcd
${password_LDAP_Gestionnaire_Credit}    acial!gcd2018


#LDAP Loueur
${username_LDAP_Loueur}       lcd
${password_LDAP_Loueur}       acial!acd2018

${idUsername}    id:username
${idPassword}    id:password
${xpathBtnConnexion}    xpath:/html/body/div[2]/div/div/form/fieldset/button

${xpathAcd}    xpath:/html/body/div[2]/div/pre/b[1]
${xpathRcd}    xpath:/html/body/div[2]/div/pre/b[1]


*** Keywords ***
Saisir les identifiants de l'administatrateur credit
    Input Text    ${idUsername}    ${username_LDAP_Admin}
    Input Text    ${idPassword}    ${password_LDAP_Admin}
    Click Button    ${xpathBtnConnexion}
    Wait Until Element Is Visible    ${xpathAcd}
    Log To Console    Connexion de l'administrateur credit
Saisir les identifiants du responsable credit
    Input Text    ${idUsername}    ${username_LDAP_Responsable_Credit}
    Input Text    ${idPassword}    ${password_LDAP_Responsable_Credit}
    Click Button    ${xpathBtnConnexion}
    Wait Until Element Is Visible    ${xpathRcd}
    Log To Console    Connexion du responsable credit

