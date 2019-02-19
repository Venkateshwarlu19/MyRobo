*** Settings ***
Library    SeleniumLibrary    

*** Test Cases ***
MyFirst Test
    Log    Hello world...
FirstSeleniumTest
    Open Browser                 https://google.com    ${Browser}
    Set Browser Implicit Wait    5
      
    Input Text                   name=q    venkateshwarlu girigani
    Press Keys                   name=q    ENTER
    # Click Button    name=btnK            
    Close Browser
    
FaceBookLogin
    Open Browser                 ${url}    ${Browser}
    Set Browser Implicit Wait    5
    Input Text                   name=email     @{CREDENTIALS}[0]
    Input Text                   id=pass        @{CREDENTIALS}[1]
    Press Keys                   id=pass        ENTER
FaceBookLoginTest4
    Open Browser                 ${url}    ${Browser}
    Set Browser Implicit Wait    5
    Input Text                   name=email     @{CREDENTIALS}[0]
    Input Text                   id=pass        @{CREDENTIALS}[1]
    Press Keys                   id=passed        ENTER
*** Variables ***
${url}    https://www.facebook.com/ 
${Browser}    chrome
@{CREDENTIALS}    8106999519    svenkat125 
    
        