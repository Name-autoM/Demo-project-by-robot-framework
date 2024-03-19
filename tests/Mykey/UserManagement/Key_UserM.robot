*** Settings ***
Library    SeleniumLibrary
Resource   ..//Valiable/variable.robot


*** Keywords ***
Menu User management 
    Mouse Over                      ${Tap_user_management}
    Click Element                   ${Menu_user_management}
    Sleep    2s

input field ชื่อผู้ใช้ระบบ screen search user management
    Input Text          ${Search_field_user_user_management}     admin
    Sleep    1s


button search main user management
    Click Element            ${Button_serach_user_management}
    Sleep    2s

button clear main user management
    Click Element            ${Button_clear_use_management}
    Sleep    1s

input field Firstname and Lastname main user management
    Input Text             ${Search_field_firstname_lastname_user_management}   name
    Sleep    1s

select dropdown estate main user management
    Click Element           ${Search_field_estate_user_management}
    Sleep    3s

select dropdown linework main usesr management
    Click Element             ${Search_field_linework_user_management}
    Sleep    3s

click switch toggle status
    Click Element         ${Toggle_Status}
    Sleep    1s

Button Create User management
    Click Element                   ${Button_add_user_management}
    Sleep    1s
    
input field ชื่อผู้ใช้ระบบ
    Input Text                       ${Textfield_username_user_management}         smlbon01
input field Firstname
    Input Text                       ${Textfield_firstname_user_management}            gongonhott
input field Lastname
    Input Text                       ${Textfield_Lastname_user_management}             hotmonmonm
input field Email
    Input Text                       ${Textfield_email_user_management}            kotsmtt@yopmail.com
input field Description
    Input Text                       ${Description_user_mangement}              ทดสอบจากโรบอท
Select Dropdown role    
    Click Element                    ${Dropdown_role_user_management}  
    Sleep    1s
    Click Element                    ${Dropdown_add_role} 
    Sleep    1s

Select Dropdown role ผู้จัดการ 
    Click Element                    ${Dropdown_role_edit_user_management}    
    Sleep    1s
    Click Element                    ${Dropdown_add_role1}
    Sleep    1s

Select dropdown estate
    Click Element                    ${Dropdown_estate_add_user_management}
    Sleep    1s
    Click Element                    ${Dropdown_add_estate}
    Sleep    1s

Select dropdown estate (edit)
    Click Element                    ${Dropdown_estate_edit_user_management}
    Sleep    1s
    Click Element                    ${Dropdown_add_estate01}
    Sleep    1s

select dropdown lineOfWork
    Click Element                    ${Dropdown_lineOfWork_add_user_management}
    Sleep    1s
    Click Element                    ${Dropdown_lineOfWork_add_user_management}
    Sleep    1s
    Click Element                    ${Button_add_user_management}
    Sleep    1s

select dropdown lineOfWork (edit)
    Click Element                    ${Dropdown_lineofwork_edit_user_management}
    Sleep    1s
    Click Element                    ${Dropdown_add_linework}
    Sleep    1s
button confirm
    Click Element                    ${Button_add_user_management}
    Sleep    1s

Click button add user management
    Click Element                    ${Modal_add_user_management}

dropdown search estate user management
    Click Element                   ${Dropdown_estateId}
    Sleep    2s
    Click Element                   ${Dropdown_นิคมอ่างทอง}

Click button main user management
    Click Element                   ${Button_serach_user_management}

Select Dropdown lineOfWork for สายงานบริหาร
    Click Element                   ${Dropdown_lineofworkId}
    Sleep    2s
    Click Element                   ${Dropdown_สายงานบริหาร}
    Sleep    1s

click button Edit
    Click Element        ${Button-edit_user-management}

click button Delete
    Click Element        ${Button_delete_user}
    Sleep    4s