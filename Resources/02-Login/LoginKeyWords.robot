*** Settings ***
Library   SeleniumLibrary
Resource    ../02-Login/LoginAssertions.robot
Resource    ../02-Login/LoginLocators.robot
Resource    ../00-Common/CommonVariables.robot
Resource    ../01-SharedModules/011-Header/Header.robot

*** Variables ***

${EMAIL}     emailbuy2fixed@goeschman.com
${EMAIL_PASSWORD}     emailbuy2fixed@goeschman.com72

${PHONE}    01155559810
${PHONE_PASSWORD}    0115555981094


*** Keywords ***

############################################## LOGIN WITH EMAIL########################################################################

Enter Valid Email and Valid Password
    Click Element      ${LOGIN_EMAIL_OPTION}
    input text    ${EMAIL_INPUT_Text}    ${EMAIL}
    input password    ${PASSWORD_INPUT_Text}   ${EMAIL_PASSWORD}

Click on Login Button
    Scroll Element Into View        ${LOGIN_BUTTON}
    Wait Until Element Is Visible    ${LOGIN_BUTTON}
    Click Element                   ${LOGIN_BUTTON}

Observe A Welcome Message
    Wait Until Element Is Visible    ${POPUP_WELCOME_MESSAGE}    timeout=10s

Enter InValid Email And Valid Password
    input text    ${EMAIL_INPUT_Text}     aghjvssasd@ash.com
    input password    ${PASSWORD_INPUT_Text}  ${EMAIL_PASSWORD}

Assert For Email Not Registered Pop Up
    Wait Until Element Is Visible    ${EMAIL_NOT_REGISTERED_MESSAGE}    timeout=15s

Enter Invalid Email Format
    Click Element      ${LOGIN_EMAIL_OPTION}
    input text    ${EMAIL_INPUT_Text}    ascbhfasdaX
    input password    ${PASSWORD_INPUT_Text}   ${EMAIL_PASSWORD}

Assert For Invalid Email Format Pop Up
    Wait Until Element Is Visible    ${INVALID_EMAIL_FORMAT_MESSAGE}   timeout=10s

Enter Valid Email And Incorrect Password
    input text    ${EMAIL_INPUT_Text}    ${EMAIL}
    input password    ${PASSWORD_INPUT_Text}   ${EMAIL_PASSWORD}

Assert For Incorrect Password Pop-Up
    Wait Until Element Is Visible    ${INVCORRECT_PASSWORD_POP_UP}     timeout=10s

############################################## LOGIN WITH PHONE NUMBER ########################################################################

Enter Valid Phone And Valid Password
    Click Element      ${LOGIN_PHONE_OPTION}
    input text     ${PHONE_NUMBER_INPUT_Text}     ${PHONE}
    input password    ${PASSWORD_INPUT_Text}   ${PHONE_PASSWORD}

Enter InValid Phone And Valid Password
    Click Element      ${LOGIN_PHONE_OPTION}
    input text   ${PHONE_NUMBER_INPUT_Text}     11111111111111
    input password    ${PASSWORD_INPUT_Text}   ${PHONE_PASSWORD}

Assert For Phone Not Registerd Pop-Up
    Wait Until Element Is Visible    ${PHONE_NOT_REGISTERED_MESSAGE}     timeout=10s

Enter Valid Phone And Incorrect Password
    Click Element      ${LOGIN_PHONE_OPTION}
    input text    ${PHONE_NUMBER_INPUT_Text}    ${PHONE}
    input password    ${PASSWORD_INPUT_Text}   0122541485
    Click on Login Button
