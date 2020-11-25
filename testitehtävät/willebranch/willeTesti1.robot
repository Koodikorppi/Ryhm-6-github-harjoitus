*** Settings ***
Resource            resource.robot

Suite Setup         Prepare Browser
Suite Teardown      Close Browser 

Test Setup          Open Obstacle
Test Teardown       Verify Solved

*** Test Cases ***

TWINS
    [Tags]  12952
    Wait Until Page Contains Element    xpath=(//a[@id="id"])[2]
    Click Element                       xpath=(//a[@id="id"])[2]
    Verify Solved

IDS ARE NOT EVERYTHING

    [Tags]  22505
    Wait Until Page Contains Element    xpath=//a[contains(text(), "Click me!")]
    Click Element    xpath=//a[contains(text(), "Click me!")]
    Verify Solved

TWO TIMES

    [Tags]  72954
    Click Element    xpath=//a[contains(text(), "Click Me 2x")]
    Click Element    xpath=//a[contains(text(), "Click me once more")]
    Verify Solved