*** Settings ***

Library    SeleniumLibrary

#Importation
Resource    ../../page/authentification.robot
Resource    ../../page/checkout.robot
Resource    ../../page/commande.robot
Resource    ../../page/descriptionProduct.robot
Resource    ../../page/panier.robot
Resource    ../../page/products.robot


*** Keywords ***
Authentification réussi
    Renseigner Le Username
    Renseigner Le Mot De Passe
    Cliquer Sur Le Bouton Login

Affichage de tous les produits
    Cliquer le sur produit Sauce Laps Backpak

Description du produit sélectionné
    Cliquer Add To Cart
    Verifier que le produit a ete bien ajoute au panier

Panier
    Cliquer Sur Checkout Pour Commander Le Produit Sélectionné

Renseignement des informations personnels du client
    Renseigner Le Prenom (FirstName)
    Renseigner Le Nom (lastname)
    Renseigner Le Code Postal
    Cliquer Sur Continuer

Terminer la phase de commande du produit
    Cliquer Sur Finish Pour Pouvoir Commander
    Vérifier que la commande est bien exécutée
