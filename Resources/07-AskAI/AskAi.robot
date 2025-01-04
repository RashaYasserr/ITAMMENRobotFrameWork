*** Settings ***
Library     SeleniumLibrary
Resource    ../00-Common/CommonVariables.robot
Resource    ../01-SharedModules/011-Header/Header.robot
Resource    ../07-AskAI/AskAiKeyWords.robot
Resource    ../04-Home/Home.robot
Resource  ../03-SignUp/SignUp.robot
Resource    ../02-Login/Login.robot

*** Keywords ***
Verify AI Doctor Selection Screen After Registration
    Sign Up With Valid Email
    Login With Valid Email And Vaild Password
    Assert On Choose AI Doctor Page

Verify AI Doctor Selection And Confirmation
    Login With Valid Email And Vaild Password
    Assert On Choose AI Doctor Page
    Select Dr Ava
    Click on Confirm Button
    Assert Female Doctor Is Selected

Ask AI Question and Verify Response
    Navigate To Ask AI Page
    Send Message To AI
    Assert On Response

Verify AI Daily Question Limit Reached Popup
    Navigate To Ask AI Page
    Ask AI 5 Questions
    Assert On Is Question Limit pop-up

Verify AI Responds With Correct Message For Non-Medical Input
     Navigate To Ask AI Page
     Send Non Medical Message To AI
     Assert On Ai Non Medical Response


