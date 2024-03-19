
*** Settings ***
Documentation    Flow Login 
Library    SeleniumLibrary
Resource   ..//Valiable/variable.robot
Resource   ../Mykey/LoginScreen/Key_Login.robot




*** Test Cases ***
TC-001 Test Open Browser
    [Tags]    Smoke
    To Open for Browser
    Close Browser

TC-002 Test Input Username and Password (Login Success)
    To Open for Browser
    Input field Username
    Input field Password
    Click to Button Login
    Close Browser

TC-003 Test Variables filed username and password (input null)
    To Open for Browser
    Click to Button Login
    find to Element text field กรุณาระบุข้อมูลให้ครบทุกฟิลด์
    Close Browser

TC-004 Test Variables filed username (input but password)
    To Open for Browser
    Input field Password
    Click to Button Login
    find to Element text field กรุณาระบุข้อมูลให้ครบทุกฟิลด์
    Close Browser

TC-005 Test Variables filed password (input but username)
    To Open for Browser
    Input field Username
    Click to Button Login
    find to Element text field กรุณาระบุข้อมูลให้ครบทุกฟิลด์
    Capture Page Screenshot
    Close Browser

TC-006 Test Variables filed username and password incorrect 
    To Open for Browser
    Set Selenium Speed    .2s
    Input text field username incorrect
    In put text field password incorrect
    Click to Button Login
    find to Element text field ชื่อผู้ใช้ระบบ หรือรหัสผ่านไม่ถูกต้อง โปรดลองอีกครั้ง!
    Close Browser

TC-007 Test checkbox to enable and disable
    To Open for Browser
    select to checkbox
    checkbox to value not null
    Unselect to checkbox
    checkbox to value null
    Close Browser
