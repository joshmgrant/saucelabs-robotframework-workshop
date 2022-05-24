*** Settings ***
Documentation     This .robot file is a suite
...
...               Keywords are imported from the resource file
Resource          keywords.resource


*** Test Cases ***
Blank Login Credentials Test
    [Setup]  Open Paychex Flex App on Sauce
    Login As  invalid  user
    Verify Invalid Credentials Error
    [Teardown]  Close Paychex Flex App on Sauce


Try It Out Administrator Test
    [Setup]  Open Paychex Flex App on Sauce
    Go To Try It Out Screen
    Go To Administrator Try It Out Flow
    Verify First Item Is Enter Payroll
    [Teardown]  Close Paychex Flex App on Sauce
    
Try It Out Employee Test    
    [Setup]  Open Paychex Flex App on Sauce
    Go To Try It Out Screen
    Go To Employee Try It Out Flow
    Verify First Item Is View Check Stub
    [Teardown]  Close Paychex Flex App on Sauce