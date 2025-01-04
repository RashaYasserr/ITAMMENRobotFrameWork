*** Settings ***
Library  SeleniumLibrary
Resource     ../../Resources/01-SharedModules/012-SideBar/SideBar.robot
Resource     ../06-DiagnosisHistory/DiagnosisHistoryKeyWords.robot
Resource    ../../Resources/00-Common/CommonKeyWords.robot
Resource    ../02-Login/LoginKeyWords.robot

*** Keywords ***

Verify History Data Matches AI Diagnosis
    Perform AI Diagnosis
    Navigate To Diagnosis History Page
    Verify History Date Matches AI Diagnosis Date
    Verify History Data Matches AI Diagnosis Data


Verify Know More Link is Clickable and Redirects to AI Diagnosis Result Page
    Login With Valid Email And Vaild Password
    Navigate To Diagnosis History Page
    Click On Know More Link
    Assert for Ai Result Page

