
*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
Resource   ..//Valiable/variable.robot
Resource   ../Mykey/LoginScreen/Key_Login.robot
Resource   ../Mykey/UserManagement/Key_UserM.robot


*** Test Cases ***
TC-001 Test flow to screen User management 
    To Open for Browser
    Input field Username
    Input field Password
    Click to Button Login
    Menu User management
    Capture Page Screenshot


TC-002 Test search in screen User management
    To Open for Browser
    Input field Username
    Input field Password
    Click to Button Login
    Menu User management
    input field ชื่อผู้ใช้ระบบ screen search user management 
    button search main user management
    button clear main user management
    input field Firstname and Lastname main user management
    button search main user management
    button clear main user management
    select dropdown estate main user management
    Scroll Element Into View                    ${Dropdown_add_estate}
    Click Element                               ${Dropdown_add_estate}     
    Sleep    2s
    button search main user management
    button clear main user management
    select dropdown linework main usesr management
    Click Element                               ${Dropdown_add_linework}
    Sleep    2s
    button search main user management
    button clear main user management

    
TC-003 Create User management
    To Open for Browser
    Input field Username
    Input field Password
    Click to Button Login
    Menu User management
    Button Create User management
    input field ชื่อผู้ใช้ระบบ
    Input Text                       ${Textfield_firstname_user_management}            gongonhott
    Input Text                       ${Textfield_Lastname_user_management}             hotmonmonm
    Input Text                       ${Textfield_email_user_management}            kotsmtt@yopmail.com
    Input Text                       ${Description_user_mangement}              ทดสอบจากโรบอท
    Click Element                    ${Dropdown_role_user_management}  
    Sleep    1s
    Click Element                    ${Dropdown_add_role}
    Sleep    1s
    Click Element                    ${Dropdown_estate_add_user_management}
    Sleep    1s
    Click Element                    ${Dropdown_add_estate}
    Sleep    1s
    Click Element                    ${Dropdown_lineOfWork_add_user_management}
    Sleep    1s
    Click Element                    ${Dropdown_add_linework}
    Sleep    1s
    Click Element                    ${Button_add_user_management}
    Sleep    1s
    Click Element                    ${Modal_add_user_management}





TC-004 Edit User management
    To Open for Browser
    Input field Username
    Input field Password
    Click to Button Login
    Menu User management
    Scroll Element Into View        ${Icon-edit}
    Sleep    2s
    click button Edit
    Sleep    2s
    Press Keys                       ${Textfield_firstname_user_management}            CTRL+A+BACKSPACE
    Input Text                       ${Textfield_firstname_user_management}            llok
    Sleep    1s
    Press Keys                       ${Textfield_lastname_user_management}             CTRL+A+BACKSPACE
    Input Text                       ${Textfield_lastname_user_management}             dcsdemonm
    Sleep    1s
    Press Keys                       ${Textfield_email_user_management}            CTRL+A+BACKSPACE
    Input Text                       ${Textfield_email_user_management}            kotsmtt@yopmail.com
    Sleep    1s
    Press Keys                       ${Description_user_mangement}              CTRL+A+BACKSPACE
    Input Text                       ${Description_user_mangement}              ทดสอบto edit จากโรบอท999
    Sleep    1s
    Select Dropdown role ผู้จัดการ
    Select dropdown estate (edit)
    select dropdown lineOfWork (edit)
    button confirm
    Click button add user management


TC-005 Delete user management
    To Open for Browser
    Input field Username
    Input field Password
    Click to Button Login
    Menu User management
    Scroll Element Into View            ${Icon-delete}
    Sleep    2s
    click button Delete
    Click Element                       ${Modal_delete_user_management}


TC-006 Select Option from Dropdown estate
    To Open for Browser
    Input field Username
    Input field Password
    Click to Button Login
    Menu User management
    Sleep    1s
    Click Element                   ${dropdown_estateId}
    Sleep    2s
    Click Element                   ${dropdown_นิคมอ่างทอง}
    Click Element                   ${Button_serach_user_management}


TC-007 Select Option from Dropdown lineOfWork
    To Open for Browser
    Input field Username
    Input field Password
    Click to Button Login
    Menu User management
    Click Element    ${dropdown_lineofworkId}
    Sleep    2s
    Click Element    ${dropdown_สายงานบริหาร}
    Sleep    1s
    Click Element     ${Button_serach_user_management}

TC-008 switch toggle status user
    To Open for Browser
    Input field Username
    Input field Password
    Click to Button Login
    Menu User management
    Scroll Element Into View    ${Toggle_Status}
    Sleep    2s
    click switch toggle status
    Sleep    1s
    Click Element    ${Modal_add_user_management}  
