*** Settings ***
Library    SeleniumLibrary    

*** Test Cases ***
MyFirst Test
    Log    Hello world...
FirstSeleniumTest
    [Documentation]    This is a sample login test for Facebook    
    Open Browser                 https://google.com    ${Browser}
    Maximize Browser Window
    wait until page contains     Gmail    
    Set Browser Implicit Wait    5
    GoogleSearch
    # Click Button    name=btnK            
    Close Browser
    
FaceBookLogin
    Open Browser                 ${url}    ${Browser}
    Maximize Browser Window
    Set Browser Implicit Wait    5
    Input Text                   name=email     @{CREDENTIALS}[0]
    Input Text                   id=pass        &{LOGINDATA}[password]
    Press Keys                   id=pass        ENTER
    # Click Element                id=userNavigationLabel
    # Click Element                xpath://li[@data-gt='{"ref":"async_menu","logout_menu_click":"menu_logout"}']
    # Log                          Test Completed
    Log                          This Test was executed By %{username} on %{os}
GmailLogin
    Open Browser                 ${url1}    ${Browser}
    Maximize Browser Window
    Set Browser Implicit Wait    5
    Click Element                xpath=//a[contains(text(),'Sign In')]     
    Input text                   id=identifierId                                                 @{usercredentials}[0]
    Click Element                xpath=//span[@class='RveJvd snByac'][contains(.,'Next')]  
    #Scroll Element Into View     xpath=//input[@type='password']         
    Input Password               xpath=//input[@type='password']                                 @{usercredentials}[1]
    Click Element                xpath=//span[contains(.,'Next')]
    Click Element                xpath=//span[contains(@class,'cb gbii')]
    Click Element                      xpath=//a[contains(.,'Sign out')]
    # Click Element                id=userNavigationLabel
    # Click Element                xpath://li[@data-gt='{"ref":"async_menu","logout_menu_click":"menu_logout"}']
    # Log                          Test Completed
    Log                          This Test was executed By %{username} on %{os}
*** Variables ***
${url}                           https://www.facebook.com/ 
${url1}                          https://www.google.com/gmail/about/#
@{usercredentials}               venkateshwarlu.girigani@gmail.com    Svenkat@125
${Browser}                       chrome
@{CREDENTIALS}                   8106999519     
&{LOGINDATA}                     password=svenkat125

*** Keywords ***
GoogleSearch
     Input Text                   name=q    venkateshwarlu girigani
    Press Keys                   name=q    ENTER
    
    
        