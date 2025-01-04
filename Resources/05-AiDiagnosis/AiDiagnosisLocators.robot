*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${GET_AI_DIAGNOSIS_BUTTON}    //button[@routerlink='/ai-diagnosis']

${SYMPTOM_DROPDOWN}    //input [@placeholder='Choose symptoms']

# SYMPTOMS Locators
${SYMPTOM_ABDOMINAL_PAIN}    //mat-option[@ng-reflect-value='Abdominal pain']
${SYMPTOM_ACID_REFLUX}    //mat-option[@ng-reflect-value=' Acid reflux']
${SYMPTOM_ANXIETY}      //mat-option[@ng-reflect-value=' Anxiety']
${SYMPTOM_BACK_PAIN}    //mat-option[@ng-reflect-value=" Back pain"]
${SYMPTOM_BLOATING}    //mat-option[@ng-reflect-value=' Bloating']
${SYMPTOM_BLISTERS}    //mat-option[@ng-reflect-value=' Blisters']
${SYMPTOM_BLOOD_IN_URINE}    //mat-option[@ng-reflect-value=' Blood in urine']
${SYMPTOM_CHEST_PAIN}    //mat-option[@ng-reflect-value=' Chest pain']
${SYMPTOM_DRY_SKIN}    //mat-option[@ng-reflect-value=' Dry skin']
${SYMPTOM_COUGH_PRODUCTIVE}    //mat-option[@ng-reflect-value=' Cough (productive)']
${SYMPTOM_FEVER}   //mat-option[@ng-reflect-value=' Fever']
${SYMPTOM_WEAKNESS}    //mat-option[@ng-reflect-value=' Weakness']
${SYMPTOM_MEMORY_LOSS}    //mat-option[@ng-reflect-value=' Memory loss']
${SYMPTOM_LOSS_BALANCE}    //mat-option[@ng-reflect-value=' Loss of balance']

# Severity Locators
${MILD_SEVERITY}    //*[@id="mat-radio-2"]
${MODERATE_SEVERITY}    //*[@id="mat-radio-3"]
${SEVERE_SEVERITY}    //*[@id="mat-radio-4"]
${FREE_SPACE}    //div[@class='col-lg-6 col-md-12 sevirty']

${NEXT_BUTTON}     (//span[@class='mat-button-wrapper' and contains(text(),'Next')])[1]
${NEXT_BUTTON_Q2}   //*[contains(@id, 'cdk-step-content')]/form/div[5]/button[2]
${BACK_BUTTON}    (//span[@class='mat-button-wrapper' and contains(text(),'back')])[1]
