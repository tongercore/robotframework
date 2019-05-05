*** Settings ***
Library    SeleniumLibrary    

*** Test Cases ***
MyFirstTest
    Log    Hello World  
    
FirstSeleniumTest
    Open Browser    https:/google.com    chrome 
    Close Browser
    
SampleLoginTest
    [Documentation]    This is a sample login test
    Open Browser    https://opensource-demo.orangehrmlive.com/    chrome
    Set Browser Implicit Wait    5
    Input Text    id=txtUsername    Admin
    Input Text    id=txtPassword    admin123
    Click Button    id=btnLogin    
    Click Element    id=welcome
    Click Element    link=Logout
    Close Browser
    Log    Test completed  
    
*** Settings ***
Documentation     A test suite with a single test for OrangeHRM
...               Created by hats' Robotcorder
Library           SeleniumLibrary    timeout=10

*** Variables ***
${BROWSER}    chrome
${SLEEP}    3 seconds

*** Test Cases ***
OrangeHRM test
    Open Browser    https://opensource-demo.orangehrmlive.com/index.php/auth/login    ${BROWSER}
    Click Element    //span[@class="form-hint"]
    Input Text    //input[@name="txtUsername"]    Admin
    Input Text    //input[@name="txtPassword"]    admin123
    Click Element    //input[@name="Submit"]
    Click Link    //a[@id="welcome"]
    Click Link    //a[@id="aboutDisplayLink"]
    Wait Until Element Is Visible    id=displayAbout 
    Sleep    ${SLEEP} 
    Capture Element Screenshot    id=displayAbout          
    Click Link    //a[@class="close"]
    Click Link    //a[@href="/index.php/auth/logout"]
    get

    Close Browser