*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${boutonAddToCart}    id:add-to-cart-sauce-labs-fleece-jacket
${descriptionProduit}    xpath:/html/body/div/div/div/div[2]/div/div[1]/div[3]/div[2]/a/div
${boutonCheckout}    id:checkout
${boutonCheckoutProblemUser}    id:checkout

*** Keywords ***
Cliquer sur le bouton checkout
    Wait Until Element Is Visible    ${descriptionProduit}
    Click Button    ${boutonCheckout}
Cliquer sur le bouton checkout avec un provbleme user
    Click Button    ${boutonCheckoutProblemUser}
    