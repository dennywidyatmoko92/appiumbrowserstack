*** Settings ***
Library    AppiumLibrary    
Library    String    
Resource    sbs.resource
Suite Setup    define apps

*** Variables ***

${username}    browserstack


*** Test Cases ***
login
    Wait Until Element Is Visible    com.sebangsa.arena:id/navigation_account    20
    Click Element    com.sebangsa.arena:id/navigation_account 
    Click Element    id=com.sebangsa.arena:id/btn_login
    Wait Until Element Is Visible    id=com.sebangsa.arena:id/username    
    Input Text    id=com.sebangsa.arena:id/username    ${username}      
    Input Text    id=com.sebangsa.arena:id/password    123456qwe
    Click Element    id=com.sebangsa.arena:id/button_login
    Close Application