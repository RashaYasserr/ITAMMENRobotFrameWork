*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${LOGIN_EMAIL_OPTION}    //div[@class='ng-star-inserted' and text()=' Email Address ']
${LOGIN_PHONE_OPTION}    //div[@class='ng-star-inserted' and text()=' Phone Number ']

${EMAIL_INPUT_Text}    //input[@type='email']
${PASSWORD_INPUT_Text}  //input[@type='password']

${PHONE_NUMBER_INPUT_Text}    //input[@placeholder='Enter Your Phone ']

${LOGIN_BUTTON}   //button[@type='submit']

