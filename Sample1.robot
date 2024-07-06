*** Settings ***
Library    BuiltIn


*** Keywords ***
Dictionary
    ${Dic1}    Create Dictionary    Name=Gayathri    Age=23
    Log    ${Dic1}

*** Test Cases ***
Run Test
    Dictionary