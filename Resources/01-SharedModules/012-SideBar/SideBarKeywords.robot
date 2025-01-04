*** Settings ***
Library     SeleniumLibrary
Resource    ../../../Resources/01-SharedModules/012-SideBar/SideBarLocators.robot
Resource    ../../../Resources/01-SharedModules/012-SideBar/SideBarAssertions.robot

*** Keywords ***

Click On SideBar Icon
    click element     ${SIDEBAR_ICON}

Click On Home Icon Button
    click element    ${HOME_ICON_BUTTON}
    wait until page contains    ${WELCOME_MESSAGE}

Click On Health Library Icon Button
    click element    ${HEALTH_LIBRARY_ICON_BUTTON}
    wait until page contains     ${HEALTH_ARTICLES_TEXT}

Click On Diagnosis History Icon Button
    click element    ${DIAGNOSIS_HISTORY_ICON_BUTTON}
    wait until page contains     ${DIGANOSIS_HISTORY_TEXT}

Click On Saved Content Icon Button
    click element    ${SAVED_CONTENT_ICON_BUTTON}
    wait until page contains     ${SAVED_CONTENT_TEXT}

Click On Security Icon Button
    click element     ${SECURITY_ICON_BUTTON}
    wait until page contains     ${SECURITY_TEXT}

Click On My Questions Icon Button
    click element     ${MY_QUESTIONS_ICON_BUTTON}
    wait until page contains     ${MY_QUESTIONS_TEXT}

Click On LogOout Icon Button
    click element     ${LOGOUT_ICON_BUTTON}
    wait until page contains     Welcome To Itammen




