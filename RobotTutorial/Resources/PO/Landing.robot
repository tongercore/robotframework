*** Settings ***
Library    SeleniumLibrary   
    

*** Variables ***
${LANDING_VERIFY_ELEMENT} =    //*[@id="mainNav"]


*** Keywords ***
Navigate to landingpage
    Go To    ${URL}
    
Verify Page load
    Wait Until Page Contains Element    ${LANDING_VERIFY_ELEMENT}       