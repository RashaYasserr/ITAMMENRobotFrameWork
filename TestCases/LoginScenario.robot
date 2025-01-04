*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/00-Common/CommonKeyWords.robot
Resource    ../Resources/01-SharedModules/011-Header/Header.robot
Resource    ../Resources/02-Login/Login.robot

Documentation  This suite tests the login functionality for both email and phone number.
Test Setup             CommonKeyWords.Begin Web Test
Test Teardown         CommonKeyWords.End Web Test


*** Test Cases ***

############################################## LOGIN WITH EMAIL########################################################################

Verify That User Can Login With A Valid Email And Valid Password
    [Documentation]  Verifies that the user can log in successfully with a valid email and password
    [Tags]    positive, smoke
    Login With Valid Email And Vaild Password

Verify That User Cannot Login With An Invalid Email And Valid Password
    [Documentation]  Verifies that the user cannot log in with an invalid email and a valid password, showing an error message
    [Tags]    smoke
    Login With InValid Email And Vaild Password

Verify That User Cannot Login With An Invalid Email Format
    [Documentation]  Verifies that the user cannot log in with an invalid email format and an error message is displayed.
    [Tags]    negative, smoke
    Login With InValid Email Format

Verify That User Cannot Login With A Valid Email And Incorrect Password
    [Documentation]  Verifies that the user cannot log in with a valid email and an incorrect password, and an error message is displayed.
    [Tags]    negative, smoke
     Login With Valid Email And Incorrect Password

############################################## LOGIN WITH PHONE NUMBER ########################################################################

Verify That User Can Login With Valid Phone And Valid Password
    [Documentation]  Verifies that the user can log in successfully with a valid phone number and password.
    [Tags]    positive, smoke
    Login With Valid Phone And Valid Password

Verify That User Cannot Login With An Invalid Phone Number And Valid Password
    [Documentation]  Verifies that the user cannot log in with an invalid phone number and valid password, and an error message is displayed.
    [Tags]    negative, smoke
    Login With Valid Phone And Valid Password

Verify That User Cannot Login With A Valid Phone Number And And Incorrect Password
    [Documentation]  Verifies that the user cannot log in with a valid phone number and incorrect password, showing an error message.
    [Tags]    negative, smoke
    Login With Valid Phone And Incorrect Password
