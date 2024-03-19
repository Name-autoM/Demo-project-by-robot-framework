
*** Settings ***
Library    SeleniumLibrary
Resource   /RF/Valiable/variable.robot

*** Test Cases ***
TC-001 Test flow Change password
    Open Browser    ${url}  ${BROWSER}
    Input Text  xpath=//*[@id="basic_username"]   ${username}
    Input Text  xpath=//*[@id="basic_password"]    ${password}
    Click Button    xpath=//*[@id="basic"]/div[5]/div/div/div/div/button
    Sleep    2s
    Click Element    xpath=//*[@id="root"]/div/header/div/img
    sleep    3s
    Click Element    xpath=/html/body/div[2]/div/ul/li[3]/span/a
    Close Browser

TC-002 check text for srceen Change password
    Open Browser    ${url}  ${BROWSER}
    Input Text  xpath=//*[@id="basic_username"]   ${username}
    Input Text  xpath=//*[@id="basic_password"]    ${password}
    Click Button    xpath=//*[@id="basic"]/div[5]/div/div/div/div/button
    Sleep    2s
    Click Element    xpath=//*[@id="root"]/div/header/div/img
    sleep    3s
    Click Element    xpath=/html/body/div[2]/div/ul/li[3]/span/a
    Sleep    2s
    Element Text Should Be    xpath=//*[@id="root"]/div/div/main/div[2]/div/div[2]/h4    expected=สร้างรหัสผ่านใหม่
    Element Text Should Be    xpath=//*[@id="root"]/div/div/main/div[2]/div/div[2]/p    expected=รหัสผ่านใหม่ของคุณต้องแตกต่างจากรหัสผ่านที่เคยใช้มาก่อนหน้านี้
    Element Text Should Be    xpath=//*[@id="root"]/div/div/main/div[2]/form/div/div[1]/div/div/div[1]/label    expected=รหัสผ่านปัจจุบัน
    Element Text Should Be    xpath=//*[@id="root"]/div/div/main/div[2]/form/div/div[2]/div/div/div[1]/label    expected=รหัสผ่านใหม่
    Element Text Should Be    xpath=//*[@id="root"]/div/div/main/div[2]/form/div/div[3]/div/div/div[1]/label    expected=ยืนยันรหัสผ่านใหม่
    Element Text Should Be    xpath=//*[@id="root"]/div/div/main/div[2]/form/div/div[4]/ul/li[1]    expected=ตั้งรหัสผ่าน 8-12 ตัวอักษรขึ้นไป
    Element Text Should Be    xpath=//*[@id="root"]/div/div/main/div[2]/form/div/div[4]/ul/li[2]    expected=มีอักษรตัวใหญ่อย่างน้อย 1 ตัว [A-Z]
    Element Text Should Be    xpath=//*[@id="root"]/div/div/main/div[2]/form/div/div[4]/ul/li[3]    expected=มีอักษรตัวเล็กอย่างน้อย 1 ตัว [a-z]
    Element Text Should Be    xpath=//*[@id="root"]/div/div/main/div[2]/form/div/div[4]/ul/li[4]    expected=มีตัวเลขอย่างน้อย 1 ตัว [0-9]
    Element Text Should Be    xpath=//*[@id="root"]/div/div/main/div[2]/form/div/div[4]/ul/li[5]    expected=มีอักขระพิเศษอย่างน้อย 1 ตัว [-+_!@#$%^&*.,?]
    Sleep    1s
    Close Browser

TC-003 check button disable and enable
    Open Browser    ${url}  ${BROWSER}
    Input Text  xpath=//*[@id="basic_username"]   ${username}
    Input Text  xpath=//*[@id="basic_password"]    ${password}
    Click Button    xpath=//*[@id="basic"]/div[5]/div/div/div/div/button
    Sleep    2s
    Click Element    xpath=//*[@id="root"]/div/header/div/img
    sleep    3s
    Click Element    xpath=/html/body/div[2]/div/ul/li[3]/span/a
    Sleep    2s
    Element Should Be Disabled    //*[@id="root"]/div/div/main/div[2]/form/div/div[5]/button
    Sleep    1s
    Input Text    xpath=//*[@id="current_p"]    testTT1234
    Input Text    xpath=//*[@id="new_p"]    testTT1234@
    Input Text    xpath=//*[@id="confirm_p"]    testTT1234@
    Element Should Be Enabled    //*[@id="root"]/div/div/main/div[2]/form/div/div[5]/button
    Sleep    1s
    Close Browser

TC-004 input text for field
    Open Browser    ${url}  ${BROWSER}
    Input Text  xpath=//*[@id="basic_username"]   ${username}
    Input Text  xpath=//*[@id="basic_password"]    ${password}
    Click Button    xpath=//*[@id="basic"]/div[5]/div/div/div/div/button
    Sleep    2s
    Click Element    xpath=//*[@id="root"]/div/header/div/img
    sleep    3s
    Click Element    xpath=/html/body/div[2]/div/ul/li[3]/span/a
    Sleep    2s
    Input Text    xpath=//*[@id="current_p"]    testTT1234
    Input Text    xpath=//*[@id="new_p"]    testTT1234@
    Input Text    xpath=//*[@id="confirm_p"]    testTT1234@
