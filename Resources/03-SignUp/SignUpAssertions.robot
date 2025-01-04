*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${EMAIL_REGISTERED_MESSAGE}    //span[@class="mat-simple-snack-bar-content" and normalize-space(text())="The email has already been taken."]
${PHONE_NUMBER_REGISTERED_MESSAGE}    //span[@class="mat-simple-snack-bar-content" and normalize-space(text())="The phone has already been taken."]
${INVALID_EMAIL_FORMAT_MESSAGE}    //span[@class='mat-simple-snack-bar-content' and text()='The email field must be a valid email address.']

${SUBSCRIPTION_PAGE_HEADER}    Unlock the Full Potential of Itammen
${LOGIN_EMAIL_OPTION}    //div[@class='ng-star-inserted' and text()=' Email Address ']

${POP_UP_EMAIL_FIELD_IS_REQUIRED}    //span[@class='mat-simple-snack-bar-content' and text()='The email field is required when is email is 1.']


${USER_AVATAR}    //img [@class='circle-img']

${PERSONAL_INFO_NAME}    //input [@placeholder='Name']
${PERSONAL_INFO_EMAIL}    //input [@placeholder='Email']
${PERSONAL_INFO_PHONE_NUMBER}    //input [@placeholder='Phone Number']
${PERSONAL_INFO_GENDER}  //mat-radio-group[@formcontrolname='gender']


${MALE_RADIO}     //mat-radio-button[@id="mat-radio-5"]
${FEMALE_RADIO}    //mat-radio-button[@id="mat-radio-6"]