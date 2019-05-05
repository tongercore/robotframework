*** Settings ***
Resource    ../Resources/FrontOfficeApp.robot 
Resource    ../Resources/Common.robot  
Test Setup    Begin Web Test
Test Teardown    End Web Test 

# robot -d results tests/Front_Office.robot

*** Variables ***
${BROWSER} =    chrome
${URL} =    http://www.robotframeworktutorial.com/front-office/

*** Test Cases ***
Should be able to acces "Team" page
    [Documentation]    This is test 1    
    [Tags]    test1
   FrontOfficeApp.Go to landingpage
    FrontOfficeApp.Go to "Team" page  
    Log    Executing test1 
    Sleep    2s      
    
    
"Team" page should match requirements
    [Documentation]    This is test 2    
    [Tags]    test2
    FrontOfficeApp.Go to landingpage
    FrontOfficeApp.Go to "Team" page
    FrontOfficeApp.Validate "Team" page
    Log    Executing test2 
    Sleep    2s       
