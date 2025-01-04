*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${HEADR_lOGO}    //img[@src='assets/img/logo.png'and @style='height: 70px; width: 100px;']
${EMAIL_ICON}    //div[(@class='ng-star-inserted') and contains(text(), 'Email Address')]
${TERMS_LINK}    //span[@class='terms' and @tabindex='0']
${USER_AVATAR}    //button[@routerlink='/patient-profile']