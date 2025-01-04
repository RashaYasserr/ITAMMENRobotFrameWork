*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${BROWSER}    chrome
${BROWSER2}  edge
${BROWSER3}  firefox
${ALIAS}    first



${ENVIROMENT}    TEST
#${ENVIROMENT}    PROD
${URL}          ${URL_DIC.${ENVIROMENT}}
&{URL_DIC}       TEST=${URL_TEST}    PROD=${URL_PROD}
${URL_TEST}        https://itammen.com
${URL_PROD}        https://itammen.com




${RETRY}    3 x
${RETRY_INTERVAL}    1 s

${Common_IMPLICIT_WAIT}     20
${Common_TIME_OUT}  30
${Common_LOAD_TIME_OUT}     20
${Common_SELENIUM_SPEED}    0.1
${RETRY}    5 x
${RETRY_INTERVAL}   1 s
${ALIAS}    main
