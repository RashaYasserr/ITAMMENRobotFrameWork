*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${USER_NAME_INPUT}     //input[@placeholder='Enter Your Name']
${PHONE_INPUT}    //input[@placeholder='Enter Your phone number']
${EMAIL_INPUT}    //input[@placeholder='Enter Your email']
${DATE_OF_BIRTH_INPUT}    //input[@placeholder='Enter Your DOB']
${FEMALE}    //mat-radio-button[@id="mat-radio-6"]
${MALE}    //mat-radio-button[@id="mat-radio-5"]

${TERMS_AND_CONDITIONS_CHECKBOX}    //span[@class='mat-checkbox-inner-container' ]

${TERMS_AND_CONDITIONS_LINK}    //span[@routerlink='/terms' and text()='Terms and conditions ']
${ACCEPT_TERMS_BUTTTON}    //span[@class='mat-button-wrapper' and contains(text(), 'Accept')]

${SIGNUP_BUTTON}    //button[@type='submit']
${OTP_FIELD_1}     (//input[@autocomplete="one-time-code"])[1]
${OTP_FIELD_2}     (//input[@autocomplete="one-time-code"])[2]
${OTP_FIELD_3}     (//input[@autocomplete="one-time-code"])[3]
${OTP_FIELD_4}     (//input[@autocomplete="one-time-code"])[4]
${OTP_FIELD_5}     (//input[@autocomplete="one-time-code"])[5]
${OTP_FIELD_6}     (//input[@autocomplete="one-time-code"])[6]
${OTP_CONFIRME_BUTTON}    //*[@id="mat-dialog-0"]/app-otp-dialog/section/div/button

${SUBSCRIBE_BUTTON}    //button [@routerlink='/subscribe']

${USER_INFO_BUTTON}     //button[@routerlink='/patient-profile']