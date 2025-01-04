*** Settings ***
Library  SeleniumLibrary
Library           DateTime
Library     F:/Robot_Projects/ITAMMEN/global_variables.py

Resource    ../00-Common/CommonVariables.robot
Resource    ../01-SharedModules/011-Header/Header.robot
Resource    ../05-AiDiagnosis/AiDiagnosisAssertions.robot
Resource    ../05-AiDiagnosis/AiDiagnosisLocators.robot
Resource    ../02-Login/LoginKeyWords.robot

*** Variables ***
${DIAGNOSIS_DATE}     None
@{SYMPTOMS_LIST}    ${SYMPTOM_ABDOMINAL_PAIN}   ${SYMPTOM_ACID_REFLUX}    ${SYMPTOM_ANXIETY}     ${SYMPTOM_BACK_PAIN}     ${SYMPTOM_BLOOD_IN_URINE}    ${SYMPTOM_CHEST_PAIN}    ${SYMPTOM_COUGH_PRODUCTIVE}    ${SYMPTOM_DRY_SKIN}    ${SYMPTOM_FEVER}    ${SYMPTOM_MEMORY_LOSS}

*** Keywords ***

Store AI Diagnosis Date
    ${current_date}=    Get Current Date     result_format=%b %d, %Y at %I:%M %p
    Set Diagnosis Datee    ${current_date}
    Log    Stored Diagnosis Date: ${current_date}

Set Diagnosis Datee
    [Arguments]    ${date}
   set_diagnosis_date  ${date}  # Call the actual Python function (not just a Robot Framework keyword)

Click on Symptoms Dropdown
    click element    ${SYMPTOM_DROPDOWN}

Select 3 Symptoms
    click element    ${SYMPTOM_ABDOMINAL_PAIN}
    Click on Symptoms Dropdown
    click element     ${SYMPTOM_ACID_REFLUX}
    Click on Symptoms Dropdown
    click element     ${SYMPTOM_ANXIETY}

Assert Diseases Are Selected
    Element Should Be Visible     ${DISEASE_ABDOMINAL_PAIN}
    Element Should Be Visible     ${DISEASE_ACID_REFLUX}
    Element Should Be Visible    ${DISEASE_ANXIETY}

Select Symptoms And Assign Severity
    click element    ${SYMPTOM_DROPDOWN}
    click element    ${SYMPTOM_ABDOMINAL_PAIN}
    click element    ${MILD_SEVERITY}

Select More Than 10 Symptoms

    FOR    ${symptom}    IN    @{SYMPTOMS_LIST}
        Scroll Element Into View    ${symptom}
        Click Element               ${symptom}
        click element    ${SYMPTOM_DROPDOWN}
    END
    # Verify that the dropdown is disabled
    click element        ${FREE_SPACE}
    ${attribute_value}=             Get Element Attribute    ${SYMPTOM_DROPDOWN}     aria-expanded
    Should Be Equal As Strings      ${attribute_value}      false

#Select More Than 10 Symptoms
#    Click Element    ${SYMPTOM_ABDOMINAL_PAIN}
#    Click on Symptoms Dropdown
#    Click Element    ${SYMPTOM_ACID_REFLUX}
#    Click on Symptoms Dropdown
#    Click Element    ${SYMPTOM_ANXIETY}
#    Click on Symptoms Dropdown
#    Click Element    ${SYMPTOM_BACK_PAIN}
#    Click on Symptoms Dropdown
#    Scroll Element Into View    ${SYMPTOM_BLOOD_IN_URINE}
#    Click Element    ${SYMPTOM_BLOOD_IN_URINE}
#    Click on Symptoms Dropdown
#    Scroll Element Into View    ${SYMPTOM_CHEST_PAIN}
#    Click Element    ${SYMPTOM_CHEST_PAIN}
#    Click on Symptoms Dropdown
#    Scroll Element Into View    ${SYMPTOM_COUGH_PRODUCTIVE}
#    Click on Symptoms Dropdown
#    Click Element    ${SYMPTOM_COUGH_PRODUCTIVE}
#    Click on Symptoms Dropdown
#    Scroll Element Into View    ${SYMPTOM_DRY_SKIN}
#    Click Element    ${SYMPTOM_DRY_SKIN}
#    Click on Symptoms Dropdown
#    Scroll Element Into View    ${SYMPTOM_FEVER}
#    Click Element    ${SYMPTOM_FEVER}
#    Click on Symptoms Dropdown
#    Scroll Element Into View    ${SYMPTOM_MEMORY_LOSS}
#    Click Element    ${SYMPTOM_MEMORY_LOSS}
#    Sleep    10s
#    Scroll Element Into View        ${SYMPTOM_DROPDOWN}
#    ${attribute_value}=             Get Element Attribute    ${SYMPTOM_DROPDOWN}     aria-expanded
#    Should Be Equal As Strings      ${attribute_value}      false

Click Next Button
    click element        ${FREE_SPACE}
    Scroll Element Into View             ${NEXT_BUTTON}
    Click Element                        ${NEXT_BUTTON}

Click on Back Button
    click element    ${BACK_BUTTON}


Click On Next Button For Second Question
    click element    ${NEXT_BUTTON_Q2}

Verify Symptom Selection Text Is Displayed
    wait until page contains     ${SYMPTOM_SELECTION_TEXT}

Verify This Field is Required Is Displayed
    Wait Until Page Contains    ${REQUIRED_FIELD_ERROR}

Verify Symptoms Start Time Question Visible
    wait until page contains    ${SYMPTOM_START_TIME_TEXT}

Verify Thinking Page Visible
    wait until page contains    ${AI_THINKING_TEXT}

Verify Result Page Content
    wait until page contains    ${RESULT_PAGE_HEADER}
    wait until page contains   ${DISCLAIMER_TEXT}

    wait until page contains   ${DIAGNOSIS_1_NAME}
    wait until page contains   ${DIAGNOSIS_1_PERCENT}
    #wait until page contains   ${DIAGNOSIS_1_DESC}

    wait until page contains    ${DIAGNOSIS_2_NAME}
    wait until page contains    ${DIAGNOSIS_2_PERCENT}
    #wait until page contains    ${DIAGNOSIS_2_DESC}

    #wait until page contains    ${DIAGNOSIS_3_NAME}
    wait until page contains    ${DIAGNOSIS_3_PERCENT}
    #wait until page contains    ${DIAGNOSIS_3_DESC}

