*** Settings ***
Library    SeleniumLibrary
Resource    ..//Valiable/variable.robot

*** Keywords ***

Menu warehouse
    Mouse Over      ${Tap_data_warehouse}
    Sleep    2s

Menu Customer current
    Click Element   ${menu_currentcustomer}
    Sleep    1s

Click button add data
    Click Button    เพิ่มข้อมูล

Field DBD Register number 
    Input Text      ${Textfield_DBD_Register_number_customer_current}   123



