*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${MALE_DOCTOR_BUTTON}   //p[contains(text(), 'Doctor Aiden')]
${FEMALE_DOCTOR_BUTTON}   //p[contains(text(), 'Doctor Ava')]
${CONFIRM_BUTTON}   //button[contains(text(), 'Confirm')]

${AI_CHAT_INPUT}    (//input[contains(@placeholder, 'Ask')])[2]
${AI_CHAT_SEND_BUTTON}   (//div[contains(@class, 'mat-form-field')]//div[4])[2]

${QUESTION_COUNT_TEXT}    (//canvas[@ng-reflect-data='[object Object]'])[2]

${AI_CHAT_RESPONSE}     (//div[@class='ai-res'])[2]
