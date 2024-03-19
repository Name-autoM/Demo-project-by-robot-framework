
*** Settings ***
Library    SeleniumLibrary
Resource   /RF/Valiable/variable.robot
Resource   ../Mykey/LoginScreen/Key_Login.robot


*** Test Cases ***
TC-001 Test flow Profile
    To Open for Browser
    Input field Username
    Input field Password
    Click to Button Login
    Sleep    2s
    Click Element    xpath=//*[@id="root"]/div/header/div/img
    sleep    3s
    Click Element    xpath=/html/body/div[2]/div/ul/li[2]/span/a    
    Close Browser

TC-002 Test fing to text screen profile correct 
    To Open for Browser
    Input field Username
    Input field Password
    Click to Button Login    
    Sleep    2s
    Click Element    xpath=//*[@id="root"]/div/header/div/img
    sleep    3s
    Click Element    xpath=/html/body/div[2]/div/ul/li[2]/span/a   
    Element Text Should Be    xpath=//*[@id="root"]/div/div/main/div[2]/div/div[2]/h4    expected=แก้ไขข้อมูลส่วนตัว
    Element Text Should Be    xpath=//*[@id="root"]/div/div/main/div[2]/div/div[2]/p    expected=ระบุข้อมูลส่วนตัวที่ต้องการจะแก้ไขได้เลย
    Element Text Should Be    xpath=//*[@id="validateOnly"]/div/div[1]/div/div/div[1]/label    expected=ชื่อจริง
    Element Text Should Be    xpath=//*[@id="validateOnly"]/div/div[2]/div/div/div[1]/label    expected=นามสกุล
    Element Text Should Be    xpath=//*[@id="validateOnly"]/div/div[3]/div/div/div[1]/label    expected=อีเมล
    Element Text Should Be    xpath=//*[@id="validateOnly"]/div/div[4]/div/div/div[1]/label    expected=ชื่อนิคม
    Element Text Should Be    xpath=//*[@id="validateOnly"]/div/div[5]/div/div/div[1]/label    expected=สายปฏิบัติงาน
    Close Browser
    
TC-003 Test fing to text screen profile incorrect 
    To Open for Browser
    Input field Username
    Input field Password
    Click to Button Login
    Sleep    2s
    Click Element    xpath=//*[@id="root"]/div/header/div/img
    sleep    3s
    Click Element    xpath=/html/body/div[2]/div/ul/li[2]/span/a   
    Element Text Should Not Be    xpath=//*[@id="root"]/div/div/main/div[2]/div/div[2]/h4    expected=แก้ไขข้อมูลส่วนตัว
    Element Text Should Not Be    xpath=//*[@id="root"]/div/div/main/div[2]/div/div[2]/p    expected=ระบุข้อมูลส่วนตัวที่ต้องการจะแก้ไขได้เลย
    Element Text Should Not Be    xpath=//*[@id="validateOnly"]/div/div[1]/div/div/div[1]/label    expected=ชื่อจริงจริง
    Element Text Should Not Be    xpath=//*[@id="validateOnly"]/div/div[2]/div/div/div[1]/label    expected=นามสกูล
    Element Text Should Not Be    xpath=//*[@id="validateOnly"]/div/div[3]/div/div/div[1]/label    expected=อีเมลลล
    Element Text Should Not Be    xpath=//*[@id="validateOnly"]/div/div[4]/div/div/div[1]/label    expected=ชื่อนิคมนิคม
    Element Text Should Not Be    xpath=//*[@id="validateOnly"]/div/div[5]/div/div/div[1]/label    expected=สายปฏิบัติ
    Close Browser

TC-004 Test Change Data to filed username and password
    To Open for Browser
    Input field Username
    Input field Password
    Click to Button Login
    Sleep    2s
    Click Element    xpath=//*[@id="root"]/div/header/div/img
    sleep    3s
    Click Element    xpath=/html/body/div[2]/div/ul/li[2]/span/a   
    Input Text    xpath=//*[@id="validateOnly_firstName"]    totest
    Input Text    xpath=//*[@id="validateOnly_lastName"]    larttest
    Click Element    xpath=//*[@id="validateOnly"]/div/div[6]/button[2]
    Sleep    2s
    Element Text Should Be    xpath=                expected=