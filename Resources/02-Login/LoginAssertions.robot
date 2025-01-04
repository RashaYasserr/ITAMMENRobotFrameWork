*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${LOGIN_EMAIL_OPTION}    //div[@class='ng-star-inserted' and text()=' Email Address ']

${POPUP_WELCOME_MESSAGE}    //span[@class='mat-simple-snack-bar-content' and text()='Welcome To ITAMMEN']
${INVCORRECT_PASSWORD_POP_UP}    //span[@class='mat-simple-snack-bar-content' and text(), 'Incorrect Password.']


${EMAIL_NOT_REGISTERED_MESSAGE}    //span[@class="mat-simple-snack-bar-content" and normalize-space(text())="Email is not registered or your account hasn't been activated yet."]
${INVALID_EMAIL_FORMAT_MESSAGE}    //span[@class='mat-simple-snack-bar-content' and text(), 'Please Enter Valid email format']

${PHONE_NOT_REGISTERED_MESSAGE}    //span[@class="mat-simple-snack-bar-content" and normalize-space(text())="Phone is not registered or your account hasn't been activated yet."]
