*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${AI_DOCTOR_SELECTION_SCREEN_TITLE}    Choose your AI Doctor
${CHANGE_NOTE_TEXT}                   You can change selection later on in your profile
${FEMALE_DOCTOR_GREETING}    Hi! I am AVA!
${MALE_DOCTOR_GREETING}    Hi! I am Aiden!
#AI Answer
${DISEASE_NAME}     Understanding Headaches
${TYPES_OF_DISEASE}    Types of Headaches

${NON_MEDICAL_MESSAGE_RESPONSE}     medical advice
#I'm here to assist you with health or medical advice. Please feel free to ask any health-related questions you may have.

${QUESTION_LIMIT_POPUP_TEXT}   You’ve reached your daily question limit! Come back tomorrow to ask more, or review your question history in your profile.