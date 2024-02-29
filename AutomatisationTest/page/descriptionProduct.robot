*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${chpAddToCart}    id:add-to-cart-sauce-labs-backpack
${chpRemove}    id:remove-sauce-labs-backpack
${msgRemove}    Remove
*** Keywords ***
Cliquer Add To Cart
    Click Element    ${chpAddToCart}

Verifier que le produit a ete bien ajoute au panier
    Wait Until Element Contains    ${chpRemove}    ${msgRemove}
    