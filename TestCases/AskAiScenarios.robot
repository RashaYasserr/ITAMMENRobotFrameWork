*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/00-Common/CommonKeyWords.robot
Resource    ../Resources/01-SharedModules/011-Header/Header.robot
Resource    ../Resources/07-AskAI/AskAi.robot

Test Setup             CommonKeyWords.Begin Web Test
Test Teardown         CommonKeyWords.End Web Test

*** Test Cases ***

Verify AI Doctor Selection Screen After Registration
    [Documentation]    This Test case verifies that the AI doctor selection screen appears after completing registration.
     Verify AI Doctor Selection Screen After Registration

Verify AI Doctor Selection And Confirmation
    [Documentation]    This Test case verifies that the user can select an AI doctor, confirm their choice, and see their selected AI doctor on the homepage.
    [Tags]    ai_doctor_selection    confirmation
    Verify AI Doctor Selection And Confirmation

Verify AI Chat Options and Response Verification
    [Documentation]   This test case verifies the availability of AI chat options and confirms that the AI provides a valid and relevant response to a submitted question.
    [Tags]    ai_chat    ask_ai
    Ask AI Question and Verify Response

Verify AI Daily Question Limit Reached Popup
    [Documentation]    This test case verifies that the popup appears when the user reaches the daily question limit.
    [Tags]    ai_chat    question_limit
    Verify AI Daily Question Limit Reached Popup

Verify AI Responds With Correct Message For Non-Medical Input
    [Documentation]    This test case verifies that the AI responds with the message indicating the need for a health-related question when a non-medical input is provided.
    [Tags]    negative, non_medical
    Verify AI Responds With Correct Message For Non-Medical Input
