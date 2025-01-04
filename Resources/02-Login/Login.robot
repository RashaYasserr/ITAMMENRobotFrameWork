*** Settings ***
Library     SeleniumLibrary
Resource    ../02-Login/LoginKeyWords.robot
Resource    ../00-Common/CommonVariables.robot
Resource    ../01-SharedModules/011-Header/Header.robot
*** Keywords ***

Login With Valid Email And Vaild Password
    Navigate To Login Page
    Enter Valid Email and Valid Password
    Click on Login Button
    Observe A Welcome Message

Login With InValid Email And Vaild Password
    Navigate To Login Page
    Enter InValid Email And Valid Password
    Click on Login Button
    Assert For Email Not Registered Pop Up

Login With InValid Email Format
    Navigate To Login Page
    Enter Invalid Email Format
    Click on Login Button
    Assert For Invalid Email Format Pop Up

Login With Valid Email And Incorrect Password
    Navigate To Login Page
    Enter Valid Email And Incorrect Password
    Assert For Incorrect Password Pop-Up

############################################## LOGIN WITH PHONE NUMBER ########################################################################

Login With Valid Phone And Valid Password
    Navigate To Login Page
    Enter Valid Phone And Valid Password
    Click on Login Button
    Observe A Welcome Message

Login With InValid Phone And Valid Password
    Navigate To Login Page
    Enter InValid Phone And Valid Password
    Click on Login Button
    Assert For Phone Not Registerd Pop-Up

Login With Valid Phone And Incorrect Password
    Navigate To Login Page
    Enter Valid Phone And Incorrect Password
    Click on Login Button
    Assert For Incorrect Password Pop-Up



