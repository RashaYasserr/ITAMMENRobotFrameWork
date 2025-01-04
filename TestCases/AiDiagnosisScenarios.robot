*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/00-Common/CommonKeyWords.robot
Resource    ../Resources/01-SharedModules/011-Header/Header.robot
Resource    ../Resources/02-Login/LoginKeyWords.robot
Resource    ../Resources/05-AiDiagnosis/AiDiagnosis.robot

Test Setup             CommonKeyWords.Begin Web Test
Test Teardown         CommonKeyWords.End Web Test


*** Test Cases ***

Verify That User Can Select Symptoms
    [Documentation]  Verifies that the user can select symptoms from the dropdown list.
    [Tags]    smoke, symptoms    Navigate To AI Diagnosis Page
    Verify That User Can Select Symptoms

Verify That User Can Click Next Button And Proceed To Next Question
    [Documentation]  Verifies that after selecting symptoms, the user can click the "Next" button and proceed to the next question in the AI diagnosis flow.
    [Tags]    smoke, navigation
    Verify That User Can Click Next Button And Proceed To Next Question


Verify That User Cannot Select More Than 10 Symptoms
    [Documentation]  Verifies that the user cannot select more than 10 symptoms.
    [Tags]    smoke, validation
    Verify That User Cannot Select More Than 10 Symptoms

Verify User Cannot Navigate to Next Question Without Answering the First Question
       [Documentation]  Verifies that the user cannot proceed to the next question without answering the first question, ensuring the required field validation is in place.
       [Tags]    validation, error_handling
    Verify User Cannot Navigate to Next Question Without Answering the First Question

Verify User Can Get Results Without Answering the Second Question
    [Documentation]  Verifies that the second question is optional, and the user can proceed to get results without answering it.
    [Tags]    optional_question, results
   Verify User Can Get Results Without Answering the Second Question

Verify that user sees loading page while results are being processed
    [Documentation]  Verifies that the user sees a loading page with a "Thinking" message while the system processes their symptoms and prepares results.
    [Tags]    results, loading
    Verify that user sees loading page while results are being processed

Verify That User Can Select Symptoms And Assign Severity
     [Documentation]  Verifies that the user can select symptoms from the list and assign severity levels ( mild, moderate, severe) during the symptom process.
     [Tags]    symptom-selection, severity-assignment
    Verify That User Can Select Symptoms And Assign Severity

Verify AI Diagnosis Results Page Displays Correct Diagnoses
    [Documentation]  Verifies that the AI Diagnosis Results page correctly displays the most likely diagnoses based on the symptoms provided, along with their probabilities and rankings.
    [Tags]    results, diagnosis, AI
    Verify AI Diagnosis Results Page Displays Correct Diagnoses

Verify That User Can Naviagte Back To First Question
    [Documentation]  Verifies that the user can navigate back to the first question of the symptom process using the back button
    [Tags]    navigation
    Verify That User Can Naviagte Back To First Question
