
*** Settings ***
Library    SeleniumLibrary
Resource   /RF/Valiable/variable.robot
Resource   /RF/tests/Mykey/LoginScreen/Key_Login.robot
Resource   /RF/tests/Mykey/Logout/Key_Logout.robot

*** Test Cases ***
TC-001 Test flow Logout
    To Open for Browser
    Input field Username
    Input field Password
    Click to Button Login
    Icon Menu my Profile
    Click menu Logout
    Close Browser
    