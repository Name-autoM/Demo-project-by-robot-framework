
*** Settings ***
Library    SeleniumLibrary
Resource   /RF/Valiable/variable.robot
Resource   ../Mykey/Role&permission/Key_Role.robot
Resource   ../Mykey/LoginScreen/Key_Login.robot



*** Test Cases ***
TC-001 Test flow to screen Role and permission
    To Open for Browser
    Input field Username
    Input field Password
    Click to Button Login
    Menu Role and permission
    
TC-002 Test search_roleName
    To Open for Browser
    Input field Username
    Input field Password
    Click to Button Login
    Menu Role and permission
    input Name_Role
    Click to Button Search
    Click to button clear

TC-003 Test Selete to dropdown permission
    To Open for Browser
    Input field Username
    Input field Password
    Click to Button Login
    Menu Role and permission
    Select to dropdown permission
    Click to Button Search
    Click to button clear

TC-004 Create permission
    To Open for Browser
    Input field Username
    Input field Password
    Click to Button Login
    Menu Role and permission
    Click to Button add permission
    Selete to permission screen create
    input to field name role permission
    input to description role permission
    click switch toggle status
    Click to button submit screen add  
    

TC-005 Edit to role and permission
    To Open for Browser
    Input field Username
    Input field Password
    Click to Button Login
    Menu Role and permission
    Input Text       ${Textfield_name_add_role}      newrolebyrobot01
    Click to Button Search
    Scroll Element Into View    ${Icon_delete_role}



TC-006 Delete to role and permission
    To Open for Browser
    Input field Username
    Input field Password
    Click to Button Login
    Menu Role and permission
    Input Text       ${Textfield_name_add_role}      newrolebyrobot01
    Click to Button Search
    Scroll Element Into View    ${Icon_delete_role}
    Click to icon delete screen main role
    click to cancel modal (delete)


TC-007 switch to toggle status role and permission
    To Open for Browser
    Input field Username
    Input field Password
    Click to Button Login
    Menu Role and permission
    Input Text       ${Textfield_name_add_role}      newrolebyrobot01
    Click to Button Search
    click to toggle status role
    click to cancel modal (main)