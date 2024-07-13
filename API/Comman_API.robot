*** Settings ***
Library    RequestsLibrary
Variables    ../Data/url.py


*** Keywords ***
Get Reques API
    Create Session    Baseurl    ${Req_Url}
    ${Headers}    Create Dictionary    Content-Type=application/json; charset=utf-8
    ${Get_Reques}    Get Request    Baseurl    api/users?page=2    headers=${Headers}
    Log    ${Get_Reques}
    