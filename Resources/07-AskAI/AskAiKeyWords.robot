*** Settings ***
Library   SeleniumLibrary
Resource    ../00-Common/CommonVariables.robot
Resource    ../01-SharedModules/011-Header/Header.robot

Resource    ../07-AskAI/AskAiAssertions.robot
Resource    ../07-AskAI/AskAiLocators.robot

*** Variables ***
#Change Variables for login with new registerd email "Take the value from SignUp Keywords file"
${EMAIL}     emailbuy2fixed@goeschman.com
${EMAIL_PASSWORD}     emailbuy2fixed@goeschman.com72

*** Keywords ***

Assert On Choose AI Doctor Page
    wait until page contains    ${AI_DOCTOR_SELECTION_SCREEN_TITLE}
    wait until page contains    ${CHANGE_NOTE_TEXT}

Select Dr Ava
    click element    ${FEMALE_DOCTOR_BUTTON}

select Dr Aiden
    click element    ${MALE_DOCTOR_BUTTON}

Click on Confirm Button
     click element    ${MALE_DOCTOR_BUTTON}

Assert Female Doctor Is Selected
    wait until page contains     ${FEMALE_DOCTOR_GREETING}

Assert Male Doctor Is Selected
    wait until page contains     ${MALE_DOCTOR_GREETING}

Send Message To AI
    input text    ${AI_CHAT_INPUT}    headache
    click element    ${AI_CHAT_SEND_BUTTON}

Send Non Medical Message To AI
    input text    ${AI_CHAT_INPUT}    Hello, how are you?
    click element    ${AI_CHAT_SEND_BUTTON}

Assert On Response
   wait until page contains    ${DISEASE_NAME}   timeout=30s
   wait until page contains     ${TYPES_OF_DISEASE}    timeout=30s

Assert On Ai Non Medical Response
   wait until page contains     ${NON_MEDICAL_MESSAGE_RESPONSE}     timeout=30s

Ask AI 5 Questions
    FOR    ${i}    IN RANGE    1    6
        Input Text    ${AI_CHAT_INPUT}    headache ${i}
        Click Element    ${AI_CHAT_SEND_BUTTON}
        Wait Until Page Contains    ${DISEASE_NAME}    timeout=30
    END
Assert On Is Question Limit pop-up
    Wait Until Page Contains    ${QUESTION_LIMIT_POPUP_TEXT}
