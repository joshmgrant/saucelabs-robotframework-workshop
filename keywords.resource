*** Settings ***
Library  AppiumLibrary

*** Keywords ***
Open Paychex Flex App on Sauce

Close Paychex Flex App on Sauce

Login As

Verify Invalid Credentials Error
    
Go To Try It Out Screen
    
Go To Administrator Try It Out Flow

Verify First Item Is Enter Payroll

Go To Employee Try It Out Flow

Verify First Item Is View Check Stub
