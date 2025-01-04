*** Settings ***
Library     SeleniumLibrary
Resource    ../../../Resources/01-SharedModules/011-Header/HeaderAssertions.robot
Resource    ../../../Resources/01-SharedModules/011-Header/HeaderLocators.robot


*** Keywords ***
Assert for the header
    Wait Until Element Is Visible  ${HEADR_lOGO}

Click On Login Buttton
   click element    ${LOGIN-BUTTON}
   Wait Until Element Is Visible   ${EMAIL_ICON}

Click on SingUp Buttton
   click element    ${SIGNUP-BUTTON}
   Wait Until Element Is Visible   ${TERMS_LINK}

Click on User Avatar
   click element    ${USER_AVATAR}
   wait until page contains     personal information
