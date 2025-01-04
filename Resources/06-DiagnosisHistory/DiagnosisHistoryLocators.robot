*** Settings ***
Library  SeleniumLibrary



*** Variables ***

${FIRST_DATE_SELECTOR}      (//div[contains(@class,'date')])[1]
${FIRST_TITLE_SELECTOR}      (//p[contains(@class,'title')])[1]
${FIRST_PERCENTAGE_SELECTOR}    (//div[contains(@class,'percentage')])[1]
${FIRST_DESCRIPTION_SELECTOR}    (//p[contains(@class,'description')])[1]
${KNOW_MORE_LINK}    (//div[contains(@class,'date')])[1]/following-sibling::div[contains(@class, 'know')]