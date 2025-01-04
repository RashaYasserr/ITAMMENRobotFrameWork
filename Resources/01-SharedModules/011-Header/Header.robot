*** Settings ***
Library     SeleniumLibrary
Resource    ../../../Resources/01-SharedModules/011-Header/HeaderKeywords.robot

*** Keywords ***

Navigate To Login Page
    Assert for the header
    Click On Login Buttton

Navigate To SingUp Page
    Assert for the header
    Click on SingUp Buttton
