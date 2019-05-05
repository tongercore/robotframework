*** Settings ***
Library    SeleniumLibrary  

*** Variables ***
${TOPNAV_TEAM} =    //*[@id="bs-example-navbar-collapse-1"]/ul/li[5]/a   

*** Keywords ***
Acces "Team"page
    Click Link    ${TOPNAV_TEAM}       