*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${SYMPTOM_SELECTION_TEXT}     Please select the symptoms you're experiencing?

${SYMPTOM_START_TIME_TEXT}     When did your symptoms start?
${REQUIRED_FIELD_ERROR}      This Feild Is Required
${AI_THINKING_TEXT}     Thinking

${DISEASE_ABDOMINAL_PAIN}     //div[contains(text(), 'Abdominal pain')]
${DISEASE_ACID_REFLUX}        //div[contains(text(), 'Acid reflux')]
${DISEASE_ANXIETY}            //div[contains(text(), 'Anxiety')]


${RESULT_PAGE_HEADER}    Based on the symptoms you've provided and your medical profile, here are the most likely diagnoses, ranked by probability.
${DISCLAIMER_TEXT}       The AI services by Itammen are for informational purposes only and not a substitute for professional medical advice. Always consult a healthcare provider for medical concerns. Check our terms of use for more information.

${DIAGNOSIS_1_NAME}      Gastroesophageal Reflux Disease (GERD)
${DIAGNOSIS_1_PERCENT}   50%
#${DIAGNOSIS_1_DESC}      A chronic condition where stomach acid frequently flows back into the esophagus, causing irritation.

${DIAGNOSIS_2_NAME}      Peptic Ulcer
${DIAGNOSIS_2_PERCENT}   30%
#${DIAGNOSIS_2_DESC}      Sores that develop on the lining of the stomach, small intestine, or esophagus.

#${DIAGNOSIS_3_NAME}      Functional Dyspepsia
${DIAGNOSIS_3_PERCENT}   20%
#${DIAGNOSIS_3_DESC}      A common disorder that causes discomfort or pain in the upper abdomen.


