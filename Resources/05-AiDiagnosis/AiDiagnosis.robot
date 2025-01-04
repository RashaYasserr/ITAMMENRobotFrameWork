*** Settings ***
Library  SeleniumLibrary
Resource    ../04-Home/Home.robot
Resource    ../05-AiDiagnosis/AiDiagnosisKeyWords.robot

*** Keywords ***

Verify That User Can Select Symptoms
    Navigate To AI Diagnosis Page
    Verify Symptom Selection Text Is Displayed
    Click on Symptoms Dropdown
    Select 3 Symptoms
    Assert Diseases Are Selected

Verify That User Can Select Symptoms And Assign Severity
    Navigate To AI Diagnosis Page
    Verify Symptom Selection Text Is Displayed
    Select Symptoms And Assign Severity

Verify That User Can Click Next Button And Proceed To Next Question
    Navigate To AI Diagnosis Page
    Click on Symptoms Dropdown
    Select 3 Symptoms
    Click Next Button
    Verify Symptoms Start Time Question Visible

Verify That User Cannot Select More Than 10 Symptoms
    Navigate To AI Diagnosis Page
    Click on Symptoms Dropdown
    Select More Than 10 Symptoms

Verify User Cannot Navigate to Next Question Without Answering the First Question
       Navigate To AI Diagnosis Page
       Click Next Button
       Verify This Field is Required Is Displayed

Verify User Can Get Results Without Answering the Second Question
     Navigate To AI Diagnosis Page
     Click on Symptoms Dropdown
     Select 3 Symptoms
     Click Next Button
     Verify Symptoms Start Time Question Visible
     Click On Next Button For Second Question
     Verify Thinking Page Visible

Verify That User Can Naviagte Back To First Question
     Navigate To AI Diagnosis Page
     Click on Symptoms Dropdown
     Select 3 Symptoms
     Click Next Button
     Verify Symptoms Start Time Question Visible
     Click on Back Button
     Verify Symptom Selection Text Is Displayed


Verify that user sees loading page while results are being processed
    Navigate To AI Diagnosis Page
    Click on Symptoms Dropdown
    Select 3 Symptoms
    Click Next Button
    Verify Symptoms Start Time Question Visible
    Click On Next Button For Second Question
    Verify Thinking Page Visible

Verify AI Diagnosis Results Page Displays Correct Diagnoses
     Navigate To AI Diagnosis Page
     Click on Symptoms Dropdown
     Select 3 Symptoms
     Click Next Button
     Verify Symptoms Start Time Question Visible
     Click On Next Button For Second Question
     Verify Thinking Page Visible
     Verify Result Page Content

Perform AI Diagnosis
    [Documentation]    Perform an AI diagnosis and store the current date.
    Navigate To AI Diagnosis Page
    Click on Symptoms Dropdown
    Select 3 Symptoms
    Click Next Button
    Verify Symptoms Start Time Question Visible
    Click On Next Button For Second Question
    Verify Thinking Page Visible
    sleep    1s
    Store AI Diagnosis Date
