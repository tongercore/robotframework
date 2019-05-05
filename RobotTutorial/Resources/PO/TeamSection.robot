*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${TEAMSECTION_HEADER_LOCATOR} =  //*[@id="team"]/div/div[1]/div/h2      
${TEAMSECTION_HEADER_LABEL} =    OUR AMAZING TEAM 

*** Keywords ***
Header should contain
    Element Text Should Be    ${TEAMSECTION_HEADER_LOCATOR}    ${TEAMSECTION_HEADER_LABEL}    
