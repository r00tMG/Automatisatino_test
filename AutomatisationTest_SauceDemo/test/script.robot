*** Settings ***

Library    SeleniumLibrary    run_on_failure=Capture Page Screenshot    timeout=0:00:20    implicit_wait=0:00:20

Resource    ../core/selenium_utils.robot
Resource    scenario/scenario_creation_de_commande.robot

Test Setup    Ouvrir le navigateur
Test Teardown    Fermer le navigateur


*** Test Cases ***
Scenario de creation de commande
    Log To Console    Test de bout en bout pour la création de commande
    Authentification Réussie
    Acceder à la description d'un produit
    Ajouter le produit au panier et voir le contenu
    Voir si le produit a bien été ajouté et valider
    Valider les informations personnelles
    Aperçu de toutes les informations de la commandes
    Voir la confirmation et retour la page inventory

Scenario d'authentification d'un user qui a un compte véroullé
    Authentification d'un utilisateur verouillé

Scenario d'authentification d'un user qui a un probleme dans son compte
    Authentication d'un utilisateur qui a un probleme
    
Scenario d'authentification d'un utilisateur qui a un probleme de performance avec son compte
    Authentication d'un utilisateur qui a un probleme de performance

Scenario d'authentification d'un erreur_user
    Authentication d'un utilisateur qui a un error_user

