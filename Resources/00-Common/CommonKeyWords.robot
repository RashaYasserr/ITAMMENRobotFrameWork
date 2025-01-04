*** Settings ***
Library      SeleniumLibrary
Resource    ../00-Common/CommonVariables.robot

*** Keywords ***
Zoom Out
    Execute Javascript  document.body.style.zoom='75%'
Configure Test Timing
         set selenium implicit wait          ${COMMON_IMPLICIT_WAIT}
         set selenium timeout                ${COMMON_TIME_OUT}
         set selenium page load timeout      ${COMMON_LOAD_TIME_OUT}
         set selenium speed                  ${COMMON_SELENIUM_SPEED}


Run Keyword until Success
    [Documentation]     this keyword will help to make your test scuceeded and if failed it retry to make it success this could be used for clcik element/ button and Run Keyword until Success    seleniumlibrary.input text
    [Arguments]  ${KW}   @{KWARGS}   ${retry}=${RETRY}    ${retry_interval}=${RETRY_INTERVAL}
    BuiltIn.wait until keyword succeeds    ${retry}    ${retry_interval}    ${KW}     @{KWARGS}

Begin Web Test
        [Arguments]     ${url}=${URL}     ${browser}=${BROWSER}    ${alias}=${ALIAS}
       Configure Test Timing
       Run Keyword until Success    OPEN BROWSER   ${url}     ${browser}    ${alias}
       Run Keyword until Success    OPEN BROWSER   ${url}     ${browser}    ${alias}
       Run Keyword until Success    MAXIMIZE BROWSER WINDOW
       Zoom Out

End Web Test
#        Handle Dialog Before Every Step
        close browser
