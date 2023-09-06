*** Settings ***
Documentation     Teste de pesquisa no site
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        Chrome
${URL}            https://www.exemplo.com
${SEARCH_TERM}    Robot Framework

*** Test Cases ***
Pesquisa no Site
    Open Browser    ${URL}    ${BROWSER}
    Input Text      id=search-box    ${SEARCH_TERM}
    Click Button    name=search-button
    Wait Until Page Contains    ${SEARCH_TERM}
    Capture Page Screenshot
    Close Browser