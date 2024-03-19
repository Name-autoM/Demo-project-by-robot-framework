*** Settings ***
Library    SeleniumLibrary
Resource    ..//Valiable/variable.robot


*** Keywords ***
To Open for Browser
    Open Browser    ${url}  ${BROWSER}   

Input field Username
    Input Text      ${Textfield_username_Login}   ${username}

Input field Password    
    Input Text      ${Textfield_password_Login}   ${password}
    
Click to Button Login     
    Click Button    ${Confirm_button_Login}
    Sleep    2s

find to Element text field กรุณาระบุข้อมูลให้ครบทุกฟิลด์
    Element Text Should Be    ${Error_field_Login}    expected=กรุณาระบุข้อมูลให้ครบทุกฟิลด์

find to Element text field ชื่อผู้ใช้ระบบ หรือรหัสผ่านไม่ถูกต้อง โปรดลองอีกครั้ง!
    Element Text Should Be    ${Error_field_Login}    expected=ชื่อผู้ใช้ระบบ หรือรหัสผ่านไม่ถูกต้อง โปรดลองอีกครั้ง!

Input text field username incorrect
    Input Text      ${Textfield_username_Login}        mytest

In put text field password incorrect
    Input Text      ${Textfield_password_Login}        topass1234
    
select to checkbox
    Select Checkbox                     ${Checkbox_field_Login}

checkbox to value not null
    Checkbox Should Be Selected         ${Checkbox_field_Login} 
    Sleep    2s
    
Unselect to checkbox 
    Unselect Checkbox                   ${Checkbox_field_Login} 
    Sleep    2s
    
checkbox to value null
    Checkbox Should Not Be Selected     ${Checkbox_field_Login} 

