*** Settings ***
Library  SeleniumLibrary
Resource    ../00-Common/CommonVariables.robot
Resource    ../01-SharedModules/011-Header/Header.robot
Resource    ../04-Home/HomeAssertions.robot
Resource    ../04-Home/HomeLocators.robot

*** Keywords ***

Click on AI Diagnosis Button
    click element    ${GET_AI_DIAGNOSIS_BUTTON}
    wait until page contains    ${SYMPTOM_SELECTION_TEXT}

Click on Health Library Button
     click element    ${HEALTH_LIBRARY_BUTTON}
     wait until page contains   ${HEALTH_ARTICLES_TEXT}


Click on Ask AI Button
     click element    ${ASK_AI_BUTTON}
     wait until page contains   ${FIRST_AI_MESSAGE}