
*** Settings ***
Library     SeleniumLibrary
Resource    ..//Valiable/variable.robot
Resource   ../Mykey/LoginScreen/Key_Login.robot



*** Test Cases ***

TC-001 oepn menu customer future screen
    To Open for Browser
    Input field Username
    Input field Password
    Click to Button Login
    Mouse Over      ${over_data_w}
    Sleep    2s
    Click Element   ${menu_futurecustomer}
    Sleep    1s
    Close Browser