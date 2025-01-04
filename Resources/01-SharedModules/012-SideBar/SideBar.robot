*** Settings ***
Library     SeleniumLibrary
Resource    ../../../Resources/01-SharedModules/011-Header/Header.robot
Resource    ../../../Resources/01-SharedModules/012-SideBar/SideBarKeywords.robot
*** Keywords ***

Navigate To Home Page
    Click On SideBar Icon
    Click On Home Icon Button

Navigate To Health Library Page
    Click On SideBar Icon
    Click On Health Library Icon Button

Navigate To Diagnosis History Page
    Click On SideBar Icon
    Click On Diagnosis History Icon Button

Navigate To Saved Content Page
    Click On SideBaR Icon
    Click On Saved Content Icon Button

Navigate To Security Page
    Click On SideBaR Icon
    Click On Security Icon Button

Navigate To My Questions Page
    Click On SideBaR Icon
    Click On My Questions Icon Button
Logout
    Click On SideBaR Icon
    Click On LogOout Icon Button

