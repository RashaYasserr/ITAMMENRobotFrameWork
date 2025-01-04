*** Settings ***
Library     SeleniumLibrary
Resource    ../03-SignUp/SignUpKeyWords.robot
Resource    ../02-Login/Login.robot

*** Keywords ***

#Complete SignUp Flow
#    Sign Up With Valid Phone Number
#    Login With Valid Phone And Valid Password
#    Verify Personal Information After Sign Up

Sign Up With Valid Email
    Navigate To SingUP Page
    Enter User Information
    Enter Valid Email
    Select Gender
    Accept Terms and Conditions
    Click on SignUp Button
    wait until page contains    OTP Code
    Enter OTP
    Click on Confirm OTP Button
    Assert On Subscription Page
    Click On Subscribe Button
    Assert On Login Page

Navigate To Login Page On Subscribe
    Navigate To SingUP Page
    Enter User Information
    Enter Valid Email
    Select Gender
    Accept Terms and Conditions
    Click on SignUp Button
    wait until page contains    OTP Code
    Enter OTP
    Click on Confirm OTP Button
    Assert On Subscription Page
    Click On Subscribe Button
    Assert On Login Page

Sign Up With Registerd Email
    Navigate To SingUP Page
    Enter User Information
    Enter Registerd Email
    Select Gender
    Accept Terms and Conditions
    Click on SignUp Button
    Observe Registerd Email Message

Sign Up Without Accepting Terms and Conditions
    Navigate To SingUP Page
    Enter User Information
    Enter Valid Email
    Select Gender
    Observe That Sign Up Button Is Disabled

Sign Up With Invalid Email Format
    Navigate To SingUP Page
    Enter Invalid Email Formatt
    Enter User Information
    Select Gender
    Accept Terms and Conditions
    Click on SignUp Button
    Observe Invalid Email Pop Up

Sign Up Without Entered Email or Phone Number
    Navigate To SingUP Page
    Enter User Information
    Select Gender
    Accept Terms and Conditions
    Click on SignUp Button
    Observe Pop Up Email Field Is Required

############################################ SingUp With Phone Number ################################################

Sign Up With Valid Phone Number
    Navigate To SingUp Page
    Enter User Information
    Enter Valid Phone Number
    Select Gender
    Accept Terms and Conditions
    Click on SignUp Button
    wait until page contains    OTP Code
    Enter OTP
    Click on Confirm OTP Button
    Assert On Subscription Page

Sign Up With Registerd Phone Number
    Navigate To SingUp Page
    Enter User Information
    Enter Registerd Phone Number
    Select Gender
    Accept Terms and Conditions
    Click on SignUp Button
    Observe Registerd Phone Message

