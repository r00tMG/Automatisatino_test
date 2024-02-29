*** Settings ***
Library    SeleniumLibrary

Resource    ../../pages/accueil.robot
Resource    ../../pages/authentication/login.robot
Resource    ../../pages/authentication/logout.robot


*** Keywords ***
Accéder à la page d'authentication
    Cliquer sur le boutton "Acces Credit Auto"
Connextion de l'administrateur credit
    Saisir les identifiants de l'administatrateur credit
Deconnexion des utilisateurs
    Cliquer sur le bouton de deconnexion
Connexion du responsable credit
    Saisir les identifiants du responsable credit