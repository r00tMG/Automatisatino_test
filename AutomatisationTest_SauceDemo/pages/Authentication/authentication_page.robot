*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${champIdUsername}    id:user-name
${champIdPassword}    id:password

${username}    standard_user
${password}    secret_sauce

${boutonLogin}    id:login-button
${usernameVerouillerOut}    locked_out_user
${usenameProblem}    problem_user
${xpathMsgErrorLockedOut}    xpath:/html/body/div/div/div[2]/div[1]/div/div/form/div[3]/h3
${usernamePerformanceGlitchUser}    performance_glitch_user
${usernameErrorUser}    error_user



*** Keywords ***
Saisi du username
    Input Text    ${champIdUsername}    ${username}
Saisi du password
    Input Text    ${champIdPassword}    ${password}
Appuyer sur le bouton de connexion
    Click Button    ${boutonLogin}
Connexion d'un utilisateur avec un username verouiller out
    Input Text    ${champIdUsername}    ${usernameVerouillerOut}
    Input Text    ${champIdPassword}    ${password}
    Click Button    ${boutonLogin}
    Wait Until Element Is Visible    ${xpathMsgErrorLockedOut}

Connexion d'un utilisateur avec un username problem_user
    Input Text    ${champIdUsername}    ${usenameProblem}
    Input Text    ${champIdPassword}    ${password}
    Click Button    ${boutonLogin}

Connexion d'un utilisateur avec un username qui a un probleme de performance
    Input Text    ${champIdUsername}    ${usernamePerformanceGlitchUser}
    Input Text    ${champIdPassword}    ${password}
    Click Button    ${boutonLogin}

Connexion d'un user avec un error_user
    Input Text    ${champIdUsername}    ${usernameErrorUser}
    Input Text    ${champIdPassword}    ${password}
    Click Button    ${boutonLogin}
