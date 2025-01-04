*** Settings ***
Library  SeleniumLibrary
Resource    ../02-Login/Login.robot
Resource    ../04-Home/HomeKeywords.robot
*** Keywords ***

Navigate To AI Diagnosis Page
    Login With Valid Email And Vaild Password
    Click on AI Diagnosis Button

Navigate To Health Library Page
    Login With Valid Email And Vaild Password
    Click on Health Library Button

Navigate To Ask AI Page
    Login With Valid Phone And Valid Password
    Click on Ask AI Button
