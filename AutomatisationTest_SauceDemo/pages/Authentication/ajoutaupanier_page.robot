*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${boutonAddToCart}    id:add-to-cart-sauce-labs-fleece-jacket
${boutonRemove}    id:remove-sauce-labs-fleece-jacket
${panier}    xpath:/html/body/div/div/div/div[1]/div[1]/div[3]/a

*** Keywords ***
Appuyer sur AddToCart pour ajouter au panier
    Click Button    ${boutonAddToCart}
    #Wait Until Element Is Visible    ${boutonRemove}
Appuyer sur le panier
    Click Link    ${panier}
    