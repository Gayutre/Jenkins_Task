*** Settings ***
Library    BuiltIn
Library    SeleniumLibrary
Variables    Data/url.py


*** Keywords ***
Dictionary
    ${Dic1}    Create Dictionary    Name=Gayathri    Age=23
    Log    ${Dic1}

Launch Browser
    ${options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys,selenium.webdriver
    Call Method    ${options}    add_argument    --incognito
    Call Method    ${options}    add_argument    --headless
    Open Browser    ${orghrm_Url}    Chrome    options=${options}
    Maximize Browser Window
    Close Browser

*** Test Cases ***
Run Test
    Dictionary
    Launch Browser