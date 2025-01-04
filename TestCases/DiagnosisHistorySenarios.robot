*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/00-Common/CommonKeyWords.robot
Resource    ../Resources/01-SharedModules/011-Header/Header.robot
Resource    ../Resources/06-DiagnosisHistory/DiagnosisHistory.robot

Test Setup             CommonKeyWords.Begin Web Test
Test Teardown         CommonKeyWords.End Web Test

*** Test Cases ***

Verify History Data Matches AI Diagnosis
    [Documentation]    This test performs the AI diagnosis, stores the diagnosis date, and then verifies that the history data (title, percentage, description, and date) matches the AI diagnosis data.
    [Tags]    history, diagnosis, ai
    Verify History Data Matches AI Diagnosis

Verify Know More Link is Clickable and Redirects to AI Diagnosis Result Page
    [Documentation]    This test ensures that the "Know More" link is clickable and verifies the link successfully redirects to the AI diagnosis result page.
    [Tags]    link, redirection
    Verify Know More Link is Clickable and Redirects to AI Diagnosis Result Page
