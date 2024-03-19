
*** Settings ***
Library     SeleniumLibrary
Resource    /RF/Valiable/variable.robot



*** Test Cases ***

TC-001 open menu raw data screen   
    Open Browser    ${url}  ${BROWSER}
    Input Text      ${Textfield_username_Login}    ${username}
    Input Text      ${Textfield_password_Login}    ${password}
    Click Button    ${Confirm_button_Login}
    Sleep    2s
    Click Element    ${Menu_rawdata}
    Sleep    1s
    Close Browser

TC-002 verity text field
    Open Browser    ${url}  ${BROWSER}
    Input Text      ${Textfield_username_Login}    ${username}
    Input Text      ${Textfield_password_Login}    ${password}
    Click Button    ${Confirm_button_Login}
    Sleep    2s
    Click Element    ${Menu_rawdata}
    Sleep    1s
    Element Text Should Be    xpath=//*/h4    expected=อัพโหลด Raw Data
    Element Text Should Be    xpath=//*[@id="validateOnly"]/div[1]/div/div/div/div[1]/label    expected=ประเภทแบบฟอร์มที่นำเข้าข้อมูล
    Element Text Should Be    xpath=//*[@id="validateOnly"]/div[2]/section/div/p[2]        expected=Drag & drop files or Browse
    Element Text Should Be    xpath=//*[@id="validateOnly"]/div[2]/section/div/p[3]        expected=สามารถอัพโหลดครั้งละ 1 ไฟล์ รองรับนามสกุล .xlsx เท่านั้น ขนาดไม่เกิน 10 MB
    Element Text Should Be    xpath=//*[@id="validateOnly"]/div[3]        expected=อัพโหลดไฟล์
    Sleep    1s
    Close Browser

TC-003 downloads from current customer xlsx
    Open Browser    ${url}  ${BROWSER}
    Input Text      ${Textfield_username_Login}   ${username}
    Input Text      ${Textfield_password_Login}    ${password}
    Click Button    ${Confirm_button_Login}
    Sleep    2s
    Click Element    ${Menu_rawdata}
    Sleep    1s
    Click Button    xpath=//*[@class="flex justify-between items-center"]/div/button
    Sleep    1s
    Wait Until Element Is Visible    xpath=//div[2]/div/ul
    Sleep    1s
    Click Element    xpath=//div[2]/div/ul/li[1]
    Sleep    4s
    Close Browser

TC-004 downloads from former customer xlsx
    Open Browser    ${url}  ${BROWSER}
    Input Text  ${Textfield_username_Login}   ${username}
    Input Text  ${Textfield_password_Login}    ${password}
    Click Button    ${Confirm_button_Login}
    Sleep    2s
    Click Element    ${Menu_rawdata}
    Sleep    1s
    Click Button    xpath=//*[@class="flex justify-between items-center"]/div/button
    Sleep    1s
    Wait Until Element Is Visible    xpath=//div[2]/div/ul
    Sleep    1s
    Click Element    xpath=//div[2]/div/ul/li[2]
    Sleep    4s
    Close Browser

TC-005 downloads from future customer xlsx
    Open Browser    ${url}  ${BROWSER}
    Input Text  ${Textfield_username_Login}   ${username}
    Input Text  ${Textfield_password_Login}    ${password}
    Click Button    ${Confirm_button_Login}
    Sleep    2s
    Click Element    ${Menu_rawdata}
    Sleep    1s
    Click Button    xpath=//*[@class="flex justify-between items-center"]/div/button
    Sleep    1s
    Wait Until Element Is Visible    xpath=//div[2]/div/ul
    Sleep    1s
    Click Element    xpath=//div[2]/div/ul/li[3]
    Sleep    4s
    Close Browser

TC-006 downloads from Touchpoint xlsx
    Open Browser    ${url}  ${BROWSER}
    Input Text  ${Textfield_username_Login}   ${username}
    Input Text  ${Textfield_password_Login}    ${password}
    Click Button    ${Confirm_button_Login}
    Sleep    2s
    Click Element    ${Menu_rawdata}
    Sleep    1s
    Click Button    xpath=//*[@class="flex justify-between items-center"]/div/button
    Sleep    1s
    Wait Until Element Is Visible    xpath=//div[2]/div/ul
    Sleep    1s
    Click Element    xpath=//div[2]/div/ul/li[4]
    Sleep    4s
    Close Browser



TC-007 flow import file current customer xlsx
    Open Browser    ${url}  ${BROWSER}
    Input Text  ${Textfield_username_Login}   ${username}
    Input Text  ${Textfield_password_Login}    ${password}
    Click Button    ${Confirm_button_Login}
    Sleep    1s
    Click Element    ${Menu_rawdata}
    Sleep    1s
    Click Element    ${Dropdown_typeform_List}
    Sleep    2s
    Click Element    ${Dropdown_type_ลูกค้าในนิคม}
    Sleep    2s
    Choose File    ${upload_file}        ${File_Path_ลูกค้าในนิคม}
    Sleep    3s
    


TC-008 flow import file former customer xlsx
    Open Browser    ${url}  ${BROWSER}
    Input Text  ${Textfield_username_Login}   ${username}
    Input Text  ${Textfield_password_Login}    ${password}
    Click Button    ${Confirm_button_Login}
    Sleep    2s
    Click Element    ${Menu_rawdata}
    Sleep    1s
    Click Element    ${Dropdown_typeform_List}
    Sleep    1s
    Wait Until Element Is Enabled    ${Dropdown_type_ลูกค้าอดีต}
    Click Element    ${Dropdown_type_ลูกค้าอดีต}
    Sleep    2s
    Choose File    ${upload_file}        ${File_Path_ลูกค้าอดีต}
    Sleep    3s


TC-009 flow import file future customer xlsx
    Open Browser    ${url}  ${BROWSER}
    Input Text  ${Textfield_username_Login}   ${username}
    Input Text  ${Textfield_password_Login}    ${password}
    Click Button    ${Confirm_button_Login}
    Sleep    3s
    Click Element    ${Menu_rawdata}
    Sleep    1s
    Click Element    ${Dropdown_typeform_List}
    Sleep    1s
    Wait Until Element Is Enabled    ${Dropdown_type_ลูกค้าอนาคต}
    Click Element    ${Dropdown_type_ลูกค้าอนาคต}
    Sleep    2s
    Choose File    ${upload_file}        ${File_Path_ลูกค้าอนาคต}
    Sleep    3s


# TC-010 flow import file Touchpoint xlsx
#     Open Browser    ${url}  ${BROWSER}
#     Input Text  ${Textfield_username_Login}   ${username}
#     Input Text  ${Textfield_password_Login}    ${password}
#     Click Button    ${Confirm_button_Login}
#     Sleep    2s
#     Click Element    ${Menu_rawdata}
#     Sleep    1s
#     Click Element    ${Dropdown_typeform_List}
#     Sleep    1s
#     Wait Until Element Is Enabled    ${Dropdown_r_TouchPoint}
#     Click Element    ${Dropdown_r_TouchPoint}
#     Sleep    2s
#     Choose File    ${upload_file}        ${File_Path_TouchPoint}
#     Sleep    3s

