*** Settings ***
Library  SeleniumLibrary
Library     F:/Robot_Projects/ITAMMEN/global_variables.py
Resource     ../00-Common/CommonVariables.robot
Resource     ../01-SharedModules/011-Header/Header.robot
Resource     ../05-AiDiagnosis/AiDiagnosis.robot
Resource     ../06-DiagnosisHistory/DiagnosisHistoryLocators.robot
Resource     ../06-DiagnosisHistory/DiagnosisHistoryAssertions.robot

*** Variables ***
${DIAGNOSIS_DATE}     None

*** Keywords ***

#Verify History Date Matches AI Diagnosis Date
#    ${stored_diagnosis_date}=    Get Diagnosis Date
#    Log    Stored Diagnosis Date: ${stored_diagnosis_date}
#    ${history_date}=    Get Text    ${FIRST_DATE_SELECTOR}
#    Log    History Date: ${history_date}
#    Should Be Equal As Strings    ${stored_diagnosis_date}    ${history_date}    msg=The diagnosis date in history does not match the stored AI diagnosis date.

Verify History Date Matches AI Diagnosis Date
    ${stored_diagnosis_date}=    Get Diagnosis Date
    Log    Stored Diagnosis Date: ${stored_diagnosis_date}
    ${history_date}=    Get Text    ${FIRST_DATE_SELECTOR}
    Log    History Date: ${history_date}
    # Use Python to remove time part everything after "at"
    ${stored_diagnosis_date}=    Evaluate    '${stored_diagnosis_date}'.split(" at ")[0]
    ${history_date}=    Evaluate    '${history_date}'.split(" at ")[0]
    Should Be Equal As Strings    ${stored_diagnosis_date}    ${history_date}    msg=The diagnosis date in history does not match the stored AI diagnosis date.

Verify History Data Matches AI Diagnosis Data
    ${history_title}=    Get Text    ${FIRST_TITLE_SELECTOR}
    ${history_percentage}=    Get Text    ${FIRST_PERCENTAGE_SELECTOR}
    ${history_description}=    Get Text    ${FIRST_DESCRIPTION_SELECTOR}
    Should Not Be Empty    ${history_title}    msg=History title is missing.
    Should Not Be Empty    ${history_description}    msg=History description is missing.
# Assert history data matches AI diagnosis data
    Should Be Equal As Strings    ${history_title}      ${AI_DIAGNOSIS_TITLE}            msg=History title does not match AI diagnosis.
    Should Be Equal As Strings    ${history_percentage}    ${AI_DIAGNOSIS_PERCENTAGE}     msg=History percentage does not match AI diagnosis.
    #Should Be Equal As Strings    ${history_description}    ${AI_DIAGNOSIS_DESCRIPTION}   msg=History description does not match AI diagnosis.

Click On Know More Link
    click element    ${KNOW_MORE_LINK}

Assert for Ai Result Page
    wait until page contains    ${DIAGNOSIS_INFO}
    wait until page contains    ${WARNING_MESSAGE}