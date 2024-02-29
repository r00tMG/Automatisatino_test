*** Settings ***
Library    SeleniumLibrary
Resource    ../../pages/Authentication/authentication_page.robot
Resource    ../../pages/Authentication/inventory_page.robot
Resource    ../../pages/Authentication/ajoutaupanier_page.robot
Resource    ../../pages/Authentication/cart_page.robot
Resource    ../../pages/Authentication/checkout_page.robot
Resource    ../../pages/Authentication/aperçuCommande_page.robot
Resource    ../../pages/Authentication/commandeComplete_page.robot


*** Keyword ***
Authentification Réussie
    Saisi du username
    Saisi du password
    Appuyer sur le bouton de connexion

Acceder à la description d'un produit
    Appuyer sur le produit sauce labs fleece jackets

Ajouter le produit au panier et voir le contenu
    Appuyer sur AddToCart pour ajouter au panier
    Appuyer sur le panier
Voir si le produit a bien été ajouté et valider
    Cliquer sur le bouton checkout
Valider les informations personnelles
    Renseigner le firstname
    Renseigner le lastName
    Renseigner le code postal
    Cliquer sur le bouton continue
Aperçu de toutes les informations de la commandes
    Finir la commande
Voir la confirmation et retour la page inventory
    Verifier si la commande est complete avec succes
    Click sur le bouton back home
Authentification d'un utilisateur verouillé
    Connexion d'un utilisateur avec un username verouiller out
Authentication d'un utilisateur qui a un probleme
    Connexion d'un utilisateur avec un username problem_user
    Cliquer sur le produit labs backpack
    Appuyer sur le panier
    Cliquer sur le bouton checkout avec un provbleme user
    Renseigner le firstname
    Renseigner le lastName
    Cliquer sur le bouton continue
    Message d'erreur pour un problem user
    
Authentication d'un utilisateur qui a un probleme de performance
    Connexion d'un utilisateur avec un username qui a un probleme de performance

Authentication d'un utilisateur qui a un error_user
    Connexion d'un user avec un error_user



