*** Settings ***
Resource    ./PO/Landing.robot 
Resource    ./PO/TeamSection.robot
Resource    ./PO/TopNav.robot

*** Variables ***


*** Keywords ***
Go to landingpage
    Landing.Navigate to landingpage
    
Validate landingpage loads
    Landing.Verify Page load
    
    
Go to "Team" page
    TopNav.Acces "Team"page
    
    
Validate "Team" page
    TeamSection.Header should contain
    
    