*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.amazon.fr
${BROWSER}    Safari

${motClé}    Amazon
${idContinuerSansAccepter}    id:sp-cc-rejectall-link
${text}    xpath://*[@id="APjFqb"]
*** Test Cases ***
Ouvrir le navigateur et se connecter à Google
    Navigation vers Amazon
*** Keywords ***
Navigation vers Amazon
    Open Browser    ${URL}  ${BROWSER}
    Maximize Browser Window

    Click Element   ${idContinuerSansAccepter} 
    Input Text        ${text}    ${motClé}
    # Click Element    xpath:/html/body/div[1]/div[3]/form
    # Click Button    xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[4]/center/input[1]
    Click Link    class:LC20lb MBeuO DKV0Md
   #Wait Until Element Contains    
    Sleep    10s
    Close Browser