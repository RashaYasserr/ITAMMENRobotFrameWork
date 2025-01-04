*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${SIDEBAR_ICON}    //mat-icon[@role='img']
${HOME_ICON_BUTTON}    //img[@class='side-nav__icon' and contains(@src, 'home.svg')]
${HEALTH_LIBRARY_ICON_BUTTON}    //img[@class='side-nav__icon' and contains(@src, 'health-library')]
${DIAGNOSIS_HISTORY_ICON_BUTTON}   //img[@class='side-nav__icon' and contains(@src, 'diagnosis-history')]
${SAVED_CONTENT_ICON_BUTTON}    //img[@class='side-nav__icon' and contains(@src, 'saved')]
${SECURITY_ICON_BUTTON}    //img[@class='side-nav__icon' and contains(@src, 'security')]
${MY_QUESTIONS_ICON_BUTTON}    //img[@class='side-nav__icon' and contains(@src, 'ai-history')]

${LOGOUT_ICON_BUTTON}    //img[@class='side-nav__icon' and contains(@src, 'logout')]
