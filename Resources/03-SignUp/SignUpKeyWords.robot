*** Settings ***
Library   SeleniumLibrary
Resource    ../03-SignUp/SignUpAssertions.robot
Resource    ../03-SignUp/SignUpLocators.robot
Resource    ../00-Common/CommonVariables.robot
Resource    ../01-SharedModules/011-Header/Header.robot


*** Variables ***

#Change email and phone number before run
${EMAIL}    farry123@gmail.com
${PHONE}    011173357322
${NAME}    Rasha Yasser
${BRITH_DATE}    08-11-1999

#Need to make it fixed code from the developer
${OTP1}    1
${OTP2}    1
${OTP3}    1
${OTP4}    1
${OTP5}    1
${OTP6}    1

*** Keywords ***

Enter User Information
    input text    ${USER_NAME_INPUT}   ${NAME}
    input text    ${DATE_OF_BIRTH_INPUT}    ${BRITH_DATE}

Select Gender
    click element    ${FEMALE}

Accept Terms and Conditions
    click element    ${TERMS_AND_CONDITIONS_CHECKBOX}

Click on SignUp Button
    Scroll Element Into View        ${SIGNUP_BUTTON}
    Wait Until Element Is Visible    ${SIGNUP_BUTTON}
    click element    ${SIGNUP_BUTTON}

Enter OTP
    input text    ${OTP_FIELD_1}    ${OTP1}
    input text    ${OTP_FIELD_2}    ${OTP2}
    input text    ${OTP_FIELD_3}    ${OTP3}
    input text    ${OTP_FIELD_4}    ${OTP4}
    input text    ${OTP_FIELD_5}    ${OTP5}
    input text    ${OTP_FIELD_6}    ${OTP6}

Click on Confirm OTP Button
    click element    ${OTP_CONFIRME_BUTTON}

Enter Valid Email
    input text    ${EMAIL_INPUT}     ${EMAIL}


Enter Registerd Email
    input text    ${EMAIL_INPUT}    farry.yasser@gmail.com

Observe Registerd Email Message
    Wait Until Element Is Visible    ${EMAIL_REGISTERED_MESSAGE}    timeout=10s
Observe That Sign Up Button Is Disabled
    Scroll Element Into View        ${SIGNUP_BUTTON}
    Wait Until Element Is Visible    ${SIGNUP_BUTTON}
    Element Should Be Disabled    ${SIGNUP_BUTTON}

Enter Invalid Email Formatt
    input text    ${EMAIL_INPUT}    aedbjkasas

Observe Invalid Email Pop Up
    Wait Until Element Is Visible    ${INVALID_EMAIL_FORMAT_MESSAGE}   timeout=10s

Observe Pop Up Email Field Is Required
    Wait Until Element Is Visible     ${POP_UP_EMAIL_FIELD_IS_REQUIRED}

Verify Personal Information After Sign Up
    Click Element    ${USER_INFO_BUTTON}
    Wait Until Element Is Visible    ${PERSONAL_INFO_NAME}

    ${name_value}    Get Element Attribute    ${PERSONAL_INFO_NAME}    value
    Should Be Equal    ${name_value}    Rasha Yasser
    ${email_value}    Get Element Attribute    ${PERSONAL_INFO_EMAIL}    value
    Should Be Equal    ${email_value}               ${EMAIL}                   value

    ${phone_value}    Get Element Attribute    ${PERSONAL_INFO_PHONE_NUMBER}    value
    Should Be Equal    ${phone_value}    01155559810

Verify Male Gender
    ${tabindex_male}    Get Element Attribute    ${MALE_RADIO}    tabindex
    Run Keyword If    '${tabindex_male}' == 'None'    Fail    Male radio button tabindex is None
    Should Be Equal As Numbers    ${tabindex_male}    '-1'

Verify Female Gender
    ${tabindex_female}    Get Element Attribute    ${FEMALE_RADIO}    tabindex
    Run Keyword If    '${tabindex_female}' == 'None'    Fail    Female radio button tabindex is None
    Should Be Equal As Numbers    ${tabindex_female}    0

Assert On Subscription Page
    wait until page contains    ${SUBSCRIPTION_PAGE_HEADER}
Click On Subscribe Button
    click element    ${SUBSCRIBE_BUTTON}

Assert On Login Page
   wait until element contains    ${LOGIN_EMAIL_OPTION}

############################################ SingUp With Phone Number ################################################

Enter Valid Phone Number
    input text    ${PHONE_INPUT}   ${PHONE}

Enter Registerd Phone Number
    input text    ${PHONE_INPUT}   01155559810

Observe Registerd Phone Message
    Wait Until Element Is Visible     ${PHONE_NUMBER_REGISTERED_MESSAGE}

Click on Terms and Condtion Link
    Navigate To SingUP Page
    Click Element   ${TERMS_AND_CONDITIONS_LINK}
    WAIT UNTIL PAGE CONTAINS    Terms and Conditions

Click on Accept Terms and Condtiont Button
     Click Element    ${ACCEPT_TERMS_BUTTTON}
    WAIT UNTIL PAGE CONTAINS    Sign Up
