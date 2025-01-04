*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/00-Common/CommonKeyWords.robot
Resource    ../Resources/01-SharedModules/011-Header/Header.robot
Resource    ../Resources/03-SignUp/SignUp.robot
Resource    ../Resources/02-Login/LoginKeyWords.robot

Documentation    This suite contains test cases for user sign-up functionality, including scenarios for valid and invalid email/phone number, terms acceptance, and personal information verification.
Test Setup             CommonKeyWords.Begin Web Test
Test Teardown         CommonKeyWords.End Web Test


*** Test Cases ***
Verify that user can sign up with a valid email
    [Documentation]    This test case verifies that a user can successfully sign up using a valid email address.
    [Tags]    positive, valid_email
    Sign Up With Valid Email

Verify Navigation To Login Page After Clicking Subscribe
    [Documentation]    This test case verifies that clicking the Subscribe button navigates the user to the Login page.
    [Tags]    navigation    subscribe_button
    Navigate To Login Page On Subscribe

Verify that user cannot sign up with a registered email
    [Documentation]    This test case checks that a user cannot sign up using an email that is already registered in the system.
    [Tags]    negative, registered_email
    Sign Up With Registerd Email

Verify that user cannot sign up with an invalid email format
    [Documentation]    This test case ensures that the system prevents sign up when the email format is invalid
    [Tags]    negative, invalid_email_format
    Sign Up With Invalid Email Format

Verify that user cannot sign up without entering email or phone number
    [Documentation]    This test case verifies that a user cannot complete the sign-up process without entering either an email address or phone number.
    [Tags]    negative, missing_email_phone
    Sign Up Without Entered Email or Phone Number


Verify that user cannot sign up without accepting terms and conditions
    [Documentation]    This test case checks that the sign-up button remains disabled if the user does not accept the terms and conditions.
    [Tags]    negative, no_terms_acceptance
    Sign Up Without Accepting Terms and Conditions

Verify that user can sign up with a valid phone number
    [Documentation]    This test case verifies that a user can successfully sign up using a valid phone number.
    [Tags]    positive, valid_phone
    Sign Up With Valid Phone Number

Verify that user cannot sign up with a registered phone number
    [Documentation]    This test case ensures that a user cannot sign up using a phone number that is already registered in the system.
    [Tags]    negative, registered_phone
    Sign Up With Registerd Phone Number

Verify that user can click on Terms and Conditions link and Redirect to the Terms and Conditions page
    [Documentation]    This test case ensures that when the user clicks on the "Terms and Conditions" link, the page redirects to the "Terms and Conditions" page
    [Tags]    positive, terms_conditions
    Click on Terms and Condtion Link

Verify That User Redirects To Sign Up Page After Clicking On Accept Terms and Conditions Button
    [Documentation]    This test case ensures that when the user clicks on the "Accept Terms and Conditions" button, they are redirected to the sign-up page.
    [Tags]    positive, redirect, terms_conditions
    Click on Terms and Condtion Link
    Click on Accept Terms and Condtiont Button

#Verify that personal information is displayed correctly after sign up
#    [Documentation]    This test case ensures that the personal information (name, email, phone number) is correctly displayed after a successful sign-up.
#    [Tags]    positive, personal_info
#    Complete SignUp Flow