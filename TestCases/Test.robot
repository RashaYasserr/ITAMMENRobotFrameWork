*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/00-Common/CommonKeyWords.robot
Resource    ../Resources/01-SharedModules/011-Header/Header.robot
Resource    ../Resources/02-Login/Login.robot
Resource     ../Resources/01-SharedModules/012-SideBar/SideBar.robot

Test Setup             CommonKeyWords.Begin Web Test
Test Teardown         CommonKeyWords.End Web Test

*** Test Cases ***
Navigate To Home Page
    Login With Valid Email And Vaild Password
    Navigate To Home Page

Navigate To Health Library Page
    Login With Valid Email And Vaild Password
    Navigate To Health Library Page

Navigate To Diagnosis History Page
    Login With Valid Email And Vaild Password
    Navigate To Diagnosis History Page

Navigate To Saved Content Page
    Login With Valid Email And Vaild Password
    Navigate To Saved Content Page

Navigate To My Questions Page
    Login With Valid Email And Vaild Password
    Navigate To My Questions Page
Logout
    Login With Valid Email And Vaild Password
    Logout
