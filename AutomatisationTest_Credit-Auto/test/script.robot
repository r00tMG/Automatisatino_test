*** Settings ***
Library    SeleniumLibrary

Resource    ../core/selenium_utils.robot
Resource    scenario/simulation_credit-auto.robot

Test Setup    Ouvrir Le Navigateur
Test Teardown    Fermer Le Navigateur

*** Test Cases ***
Scenario connexion administrateur
    Accéder à la page d'authentication
    Saisir les identifiants de l'administatrateur credit
    Deconnexion des utilisateurs
Scenarion connexion du responsable credit
    Accéder à la page d'authentication
    Connexion du responsable credit
    Deconnexion des utilisateurs