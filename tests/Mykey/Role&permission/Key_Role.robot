*** Settings ***
Library    SeleniumLibrary
Resource    ..//Valiable/variable.robot


*** Keywords ***

Menu Role and permission
    Mouse Over      ${Tap_user_role}
    Sleep    2s
    Click Element    ${Menu_role&permisstion}
    Sleep    1s

input Name_Role 
    Input Text       ${Textfield_name_add_role}        ผู้จัดการ
    Sleep    1s

Click to Button Search
    Click Element    ${Button_search_role}
    Sleep    1s

Click to button clear
    Click Element        ${Button_clear_role}    
    Sleep    1s

Select to dropdown permission
    Click Element         ${Dropdown_permission} 
    Sleep    5s
    Click Element         ${Select_dropdown_(ผู้บริหาร)}

Click to Button add permission
    Click Element         ${Button_add_permission}
    Sleep    2s

Selete to permission screen create
    Click Element          ${Select_add_permission}
    Sleep    2s
    Click Element          ${permission_add_ผู้บริหาร}
    Sleep    1s

input to field name role permission
    Click Element         ${Textfield_name_add_role}
    Sleep    1s
    Input Text            ${Textfield_name_add_role}        newrolebyrobot01

input to description role permission
    Click Element            ${Textfield_description_add_role}
    Sleep    1s
    Input Text               ${Textfield_description_add_role}        text to input text by robot01

click switch toggle status
    Click Element             ${Toggle_status_add_role}
    Sleep    1s

Click to button cancel screen add
    Click Element             ${Button_cancel_add}


Click to button submit screen add
    Click Element             ${Button_submit_add}

Click to icon delete screen main role
    Click Element        ${Icon_delete_role}
    Sleep    2s

click to confirm modal (delete)
    Click Element         ${Modal_delete_role}
    Sleep    2s

click to cancel modal (delete)
    Click Element         ${Modal_cancel_role}
    Sleep    2s

click to toggle status role
    Click Element         ${Toggle_Status_role}
    Sleep    1s

click to confirm modal (main)
    Click Element         ${Modal_confirm_main}
    Sleep    1s

click to cancel modal (main)
    Click Element         ${Modal_cancel_main}
    Sleep    1s