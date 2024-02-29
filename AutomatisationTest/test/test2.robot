*** Settings ***
Library    SeleniumLibrary    run_on_failure=Capture Page Screenshot    timeout=0:00:20    implicit_wait=0:00:20

Resource    ../core/selenium_utils.robot
Resource    scenarios/scenario_creation_commande.robot

Test Setup    Ouvrir Le navigateur
Test Teardown    Fermer Le navigateur

*** Test Cases ***
Scnearion de creation de commande
    Log To Console    Test de bout en bout pour la création de commande
    Authentification Réussi
    Affichage De Tous Les Produits
    Description Du Produit Sélectionné
    Panier
    Renseignement Des Informations Personnels Du Client
    Terminer La Phase De Commande Du Produit
