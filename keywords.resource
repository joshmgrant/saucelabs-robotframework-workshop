*** Settings ***
Library  AppiumLibrary

*** Keywords ***
Open Paychex Flex App on Sauce
    Open Application  http://ondemand.us-west-1.saucelabs.com/wd/hub
    ...  platformName=iOS
    ...  deviceName=iPhone.*
    ...  username=%{SAUCE_USERNAME}
    ...  accessKey=%{SAUCE_ACCESS_KEY}
    ...  name=${TEST NAME}
    ...  autoDismissAlerts=${true}
    ...  app=storage:732bb228-38be-45e4-adae-7b3ac561d5a5

Close Paychex Flex App on Sauce
    Close All Applications

Login As
    [Arguments]    ${username}  ${password}
    Input Text  nsp=value=="Username"  ${username}
    Input Text  nsp=value=="Password"  ${password}
    Click Element  nsp=label=="Sign In"

Verify Invalid Credentials Error
    Sleep  3
    Element Should Be Visible  nsp=label=="Invalid Username or Password. Too many failed attempts will lock your account."

Go To Try It Out Screen
    Click Element  nsp=label=="Try it out"
    Wait Until Page Does Not Contain Element  nsp=label=="Try it out"

Go To Administrator Try It Out Flow
    Sleep  3
    Click Element  nsp=label=="Administrator"

Verify First Item Is Enter Payroll
    Wait Until Page Contains Element  nsp=label=="appIcons:payroll Enter Payroll next-arrow
    Element Should Be Visible  nsp=label=="appIcons:payroll Enter Payroll next-arrow

Go To Employee Try It Out Flow
    Click Element  nsp=label=="Employee"

Verify First Item Is View Check Stub
    Wait Until Page Contains Element  nsp=label=="appIcons:payroll View Check Stub next-arrow"
    Element Should Be Visible  nsp=label=="appIcons:payroll View Check Stub next-arrow"
