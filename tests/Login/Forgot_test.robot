
*** Settings ***
Library    SeleniumLibrary
Resource   ..//Valiable/variable.robot

*** Test Cases ***

TC-001 Test Click forgot to open screen forgot password
    Open Browser                ${url}  ${BROWSER} 
    Sleep    1s
    Click Link                  ${Links_forgot_password}
    Sleep    1s
    Element Text Should Be    xpath=//*[@id="basic"]/p[1]    expected=ลืมรหัสผ่าน
    Sleep    1s
    Element Text Should Be    xpath=//*[@id="basic"]/p[2]    expected=รีเซ็ตรหัสผ่านด้วยอีเมลที่ใช้งาน
    Sleep    1s
    Element Text Should Be    xpath=//*[@id="basic"]/div[2]/div/div[1]/label    expected=อีเมล
    Sleep    1s
    Element Text Should Be    ${Reset_password_button_forgot_password}/span    expected=รีเซ็ตรหัสผ่าน
    Close Browser

TC-002 Test input filed Email
    Open Browser                ${url}  ${BROWSER} 
    Sleep    1s
    Click Link                  ${Links_forgot_password}
    Sleep    1s
    Input Text                  ${Textfield_forget_email}            ${email}
    Sleep    1s
    Click Element               ${Reset_password_button_forgot_password}/span

TC-003 Test input filed Email not to format
    Open Browser                ${url}  ${BROWSER} 
    Sleep    1s
    Click Link                  ${Links_forgot_password}
    Sleep    1s
    Input Text                  ${Textfield_forget_email}                nametest
    Sleep    1s    
    Element Text Should Be      ${Error_alert_forgot_password}        expected=รูปแบบอีเมลไม่ถูกต้อง
    Sleep    1s
    Close Browser

TC-004 Test button forgot disable and enable
    Open Browser                  ${url}  ${BROWSER} 
    Sleep    1s
    Click Link                    ${Links_forgot_password}
    Sleep    1s
    Element Should Be Disabled    ${Reset_password_button_forgot_password}
    Sleep    1s
    Input Text                    ${Textfield_forget_email}    nametest
    Element Should Be Enabled     ${Reset_password_button_forgot_password}
    Sleep    1s
    Element Text Should Be        ${Error_alert_forgot_password}        expected=รูปแบบอีเมลไม่ถูกต้อง
    Sleep    1s
    Close Browser

TC-005 Test input text filed is null
    Open Browser                  ${url}  ${BROWSER} 
    Sleep    1s
    Click Link                    ${Links_forgot_password}
    Sleep    2s
    Input Text                    ${Textfield_forget_email}    nametest
    Sleep    5s
    Press Keys                    ${Textfield_forget_email}    CTRL+A+DELETE
    Sleep    5s
    Element Text Should Be        ${Error_alert_forgot_password}            expected=โปรดระบุ
    sleep    1s
    Close Browser

Tc-00 Test full flow forgot password
    Open Browser                    ${url}  ${BROWSER} 
    Sleep    1s
    Click Link                      ${Links_forgot_password}
    Sleep    1s
    Input Text                      ${Textfield_forget_email}    ${email}
    Sleep    1s
    Click Element                   ${Reset_password_button_forgot_password}/span
    Sleep    1s
    Click Element                xpath=//*[@id="root"]/div/div/div[2]/div[2]/div/div/button
    Sleep    1s
    Close Browser

Tc-00 Test check button send email again screen validate email (forgot password)
    Open Browser                    ${url}  ${BROWSER} 
    Sleep    1s
    Click Link                      ${Links_forgot_password}
    Sleep    1s
    Input Text                      ${Textfield_forget_email}    ${email}
    Sleep    1s
    Click Element                   ${Reset_password_button_forgot_password}/span
    Sleep    1s
    Click Element                xpath=//*[@id="root"]/div/div/div[2]/div[2]/div/div/p[3]/span
    Sleep    1s
    Close Browser



TC-00 Test return to forgot screen back to login screen
    Open Browser                    ${url}  ${BROWSER} 
    Sleep    1s
    Click Link                      ${Links_forgot_password}
    Sleep    2s
    Click Link                     xpath=//*[@id="basic"]/div[4]/div[1]/a
    Sleep    2s
    Close Browser     
