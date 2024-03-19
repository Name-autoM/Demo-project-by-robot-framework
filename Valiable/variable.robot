*** Variables ***
${url}                              xxxxxx
${BROWSER}                          chrome
${Username}                         xxxxxx
${Password}                         xxxx
${Email}                            testt23@gmail.com


#Login
${Textfield_username_Login}                //*[@id="basic_username"] 
${Textfield_password_Login}                //*[@id="basic_password"]
${Confirm_button_Login}                    //*[@id="basic"]/div[5]/div/div/div/div/button
${Checkbox_field_Login}                    //*[@id="basic_remember"]/label/span[1]/input
${Error_field_Login}                       //*[@id="basic"]/p[4]
${Links_forgot_password}                   //*[@id="basic_remember"]/a


#Logout
${Menu_Profile}                    //*[@id="root"]/div/header/div/img
${Menu_Logout}                     /html/body/div[2]/div/ul/li[4]


#Forgot-password
${Title_menu}                        
${Descrition_undertitle}                     
${Textfield_forget_email}                    //*[@id="basic_email"]
${Reset_password_button_forgot_password}     //*[@id="basic"]/div[3]/div/div/div/div/button
${Links_back_to_Login}
${Error_alert_forgot_password}               //*[@id="basic_email_help"]/div                       


#main menu
${Menu_current_customer}                    //div/ul/li[contains(@data-menu-id, 'current')]
${Menu_future_customer}                     //div/ul/li[contains(@data-menu-id, 'future')]
${Menu_Stakeholder}                         //div/ul/li[contains(@data-menu-id, 'stakeholder')]
${Menu_Touch_point}                         //div/ul/li[contains(@data-menu-id, 'touchpoint')]
${Menu_rawdata}                             //*[@id="root"]/div/div/aside/div[1]/ul/li[3]/span
${Menu_role&permisstion}                    //div/ul/li[contains(@data-menu-id, 'role')]
${Menu_user_management}                     //div/ul/li[contains(@data-menu-id, 'user')]
${Tap_data_warehouse}                       //*[@id="root"]/div/div/aside/div[1]/ul/li[2]/div/span
${Tap_user_management}                      //*[contains(@data-menu-id,"user-management")]


#Search usermanagement        
${Search_field_user_user_management}                        //*[@id="username"]
${Search_field_firstname_lastname_user_management}          //*[@id="fullName"] 
${Search_field_estate_user_management}                      //*[@id="estateId"]
${Search_field_linework_user_management}                    //*[@id="lineOfWorkId"]
${Button_serach_user_management}                            //*[contains(text(), 'ค้นหา')]
${Button_clear_use_management}                              //*[contains(text(), 'ล้างข้อมูล')] 
${Dropdown_estateId}                                        //*[@id="estateId"]
${Dropdown_lineofworkId}                                    //*[@id="lineOfWorkId"]
${Dropdown_นิคมอ่างทอง}                                      //*[contains(text(),'นิคมอุตสาหกรรม เอส อ่างทอง')]
${Dropdown_สายงานบริหาร}                                     //*[contains(text(), 'สายงานบริหาร')]
${Icon-edit}                                                //*[contains(@aria-label, "edit")]
${Modal_delete_user_management}                             //button[contains(.,'ลบ')]
${Icon-delete}                                              //*[contains(@aria-label, "delete")]
${Toggle_Status}                                            //*[@id="rc-tabs-0-panel-user"]/div/div[3]/div/div[2]/div/div/div/div/div/div/table/tbody/tr[2]/td[9]/button/span


#create user management
${Button_add_user_management}                                //div/div/div/main/div/div[2]/div/div/div/div[1]/div/button
${Textfield_username_user_management}                        //*[@id="validateOnly_username"]
${Textfield_firstname_user_management}                       //*[@id="validateOnly_firstName"]
${Textfield_Lastname_user_management}                        //*[@id="validateOnly_lastName"]
${Textfield_email_user_management}                           //*[@id="validateOnly_email"]
${Dropdown_role_user_management}                             //*[@id="validateOnly_roleId"]
${Description_user_mangement}                                //*[@id="validateOnly_description"]
${Dropdown_estate_add_user_management}                       //*[@id="validateOnly_estateId"]
${Dropdown_lineOfWork_add_user_management}                   //*[@id="validateOnly_lineOfWorkId"]
${Modal_add_user_management}                                 //*[contains(text(), 'ตกลง')]
${Modal_cancel_add_user_management}                          //div[3]//div[2]//div[2]/div/div[3]/div[1]/button
${Button_add_user_management}                                //*[contains(text(), 'ยืนยัน')]
${Button_cancel_add_user_management}                         //*[contains(text(), 'ยกเลิก')]


#data list user management
${Dropdown_add_role}                      //*[contains(text(), 'Manager')]
${Dropdown_add_role1}                     //*[contains(text(), 'ABC')]
${Dropdown_add_estate}                    //*[contains(text(), 'นิคมอุตสาหกรรม เอส อ่างทอง')]
${Dropdown_add_estate01}                  //*[contains(text(), 'นิคมอุตสาหกรรมบางชัน')]
${Dropdown_add_estate02}                  //*[contains(text(), 'นิคมอุตสาหกรรมบางปะอิน')]
${Dropdown_add_linework}                  //*[contains(text(), 'สายงานประจำสำนักผู้ว่าการ')]


#edit user management
${Button-edit_user-management}                   //*[contains(@aria-label, "edit")]
${Button_delete_user}                            //*[contains(@aria-label, "delete")]
${Button_edit_c}                                 //html/body/div[3]/div/div[2]/div/div[2]/div/div[3]/div[1]/button
${Dropdown_estate_edit_user_management}          //*[@id="validateOnly"]/div[1]/div[9]/div/div/div[2]/div/div/div/div/span[2]
${Dropdown_lineofwork_edit_user_management}      //*[@id="validateOnly"]/div[1]/div[10]/div/div/div[2]/div/div/div/div/span[2]
${Dropdown_role_edit_user_management}            //*[@id="validateOnly"]/div[1]/div[6]/div/div/div[2]/div/div/div


#Raw data
${Upload_file}                        //*[contains(@role, "presentation")]/input
${File_Path_ลูกค้าในนิคม}                C:/Users/namev/OneDrive/เอกสาร/Customer_in_the_estate.xlsx
${File_Path_ลูกค้าอดีต}                  C:/Users/namev/OneDrive/เอกสาร/Former_Customer.xlsx
${File_Path_ลูกค้าอนาคต}                C:/Users/namev/OneDrive/เอกสาร/Future_Customer.xlsx
${File_Path_TouchPoint}                C:/Users/namev/OneDrive/เอกสาร/
${Dropdown_typeform_List}             //*[@id="validateOnly"]/div[1]/div/div/div/div[2]/div/div/div
${Dropdown_type_ลูกค้าในนิคม}           //*[contains(text(), 'ลูกค้าในนิคม')]
${Dropdown_type_ลูกค้าอดีต}             //*[contains(text(), 'ลูกค้าอดีต')]
${Dropdown_type_ลูกค้าอนาคต}           //*[contains(text(), 'ลูกค้าอนาคต')]
${Dropdown_type_TouchPoint}           //*[contains(text(), 'TouchPoint')]


#Role&permission
${Tap_user_role}                       xpath=//*[@id="root"]/div/div/aside/div[1]/ul/li[4]/div/span


#search main role
${Search_field_name_role}                     //*[@id="search_roleName"]
${Dropdown_permission}                        //*[@id="search_permissionId"]
${Select_dropdown_(ผู้บริหาร)}                   //div[contains(text(), 'ผู้บริหาร')]
${Button_search_role}                         //*[@id="search"]/div[2]/div/div/div[2]/button
${Button_clear_role}                          //*[@id="search"]/div[2]/div/div/div[1]/button
${Button_add_permission}                      //button[contains(., 'เพิ่มสิทธิ์')]
${Icon_edit_role}                             //*[contains(@aria-label, "edit")]
${Icon_delete_role}                           //*[contains(@aria-label, "delete")]
${Modal_delete_role}                          //button[contains(.,'ลบ')]
${Modal_cancel_role}                          //button[contains(.,'ยกเลิก')]
${Toggle_Status_role}                         //button[contains(@role, "switch")]
${Modal_confirm_main}                         //*[contains(text(), 'ตกลง')]
${Modal_cancel_main}                          //*[contains(text(), 'ยกเลิก')]


#create_role
${Select_add_permission}                          //*[@id="permission"]   
${Textfield_name_add_role}                        //*[@id="roleNameTh"]  
${Textfield_description_add_role}                 //*[@id="description"]   
${Toggle_status_add_role}                         //*[@id="status"]/span
${Button_cancel_add}                              //button[contains (., 'ยกเลิก')]
${Button_submit_add}                              //button[contains (., 'บันทึก')]


#data list
${Permission_add_ผู้บริหาร}                          //*[contains (text(), 'ผู้บริหาร')]
${Permission_add_นิคม}                             //*[contains (text(), 'นิคม')]
${Permission_add_Adminกนอ.}                       //*[contains (text(), 'Adminกนอ.')]


#Customer Current add
${Button_add_customer_current}                       เพิ่มข้อมูล
${Textfield_DBD_Register_number_customer_current}    id=dbdRegisterNumber            
${Textfield_nameTH_factory}                          id=factoryNameTh
${Textfield_nameEN_factory}                          id=factoryNameEn
${Dropdown_linkwork_customer_current}                id=lineOfWorkId
${Dropdown_nameestate_customer_current}              id=estateNameEn
${Dropdown_estate_customer_current}                  id=estateId
${Dropdown_group_byage_customer_current}             id=customerGroupByAge
${Dropdown_group_nationality_customer_current}       id=customerGroupByRegion
${Dropdown_customer_nationality_current}             id=customerRegion
${Dropdown_customer_industry_current}                id=customerGroupByEstateType
${Dropdown_type_industry_current}                    id=typeOfEstate
${Dropdown_type_business_current}                    id=typeOfBusiness
#summary customer Current add
${Button_Summary_add}                                เพิ่ม
${Dropdown_name_estate_industry_current}            id=summaryEstateId_0
${Dropdown_yearOfBudget_current}                    id=yearOfBudget_0
${Dropdown_month_customer_current}                  id=monthOfBudget_0
${Dropddown_staffname_customer_current}             id=staffName_0
${Dropdown_reporter_customer_current}               id=reporterName_0
${Dropdown_reporter_position_customer_current}      id=reporterPosition_0
${Textfield_reporter_phonenumber_customer_current}   id=reporterPhoneNumber_0
${Textfield_reporter_email_customer_current}         id=reporterEmail_0
${Textfield_byrai_customer_current}                 id=areaSizeByRai_0
${Textfield_sizebyNgan_customer_current}            id=areaSizeByNgan_0
${Textfield_sizebywa_customer_current}              id=areaSizeByWa_0
${Textfield_sizemeter_customer_current}             id=areaSizeByMeters_0
${Textfield_waterconsumption_customer_current}      id=waterConsumption_0
${Textfield_numberOfWorker_customer_current}        id=numberOfWorker_0
${Textfield_ceoNameOfFactory_customer_current}      id=ceoNameOfFactory_0
${Textfield_ceoPositionOfFactory_customer_current}  id=ceoPositionOfFactory_0
${Textfield_coordinatorName_customer_current}       id=coordinatorName_0
${Textfield_coordinatorPhoneNumber_customer_current}  id=coordinatorPhoneNumber_0
${Textfield_coordinatorEmail_customer_current}      id=coordinatorEmail_0
${Upload_file_customer_current}                     id=//*[@id="root"]/div/div/main/div/div/div[2]/form/div[3]/div[2]/div/div/div[25]/div/div/div[2]/div/div/span[1]/div[1]/span/input
${file_image}                                       C:/Users/namev/OneDrive/เอกสาร/s.jpg

${Dropdown_productAndServiceWant_current}           id=productAndServiceWant_0
${Dropdown_productAndServiceExpected_current}       id=productAndServiceExpected_0
${Dropdown_supportWant_current}                     id=supportWant_0
${Dropdown_supportExpected_current}                 id=supportExpected_0
${Dropdown_transactionWant_current}                 id=transactionWant_0
${Dropdown_transactionExpected_current}             id=transactionExpected_0
${Dropdown_crmExpected_current}                     id=crmExpected_0
${Textfield_productAndServiceSuggestion_current}     id=productAndServiceSuggestion_0
${Textfield_supportSuggestion_current}               id=supportSuggestion_0
${Textfield_transactionSuggestion_current}           id=transactionSuggestion_0
${Textfield_crmSuggestion_current}                   id=crmSuggestion_0
${Textfield_notSatisfied_current}                    id=notSatisfied_0

${Dropdown_buyOrRentLand_current}                   id=buyOrRentLand_0
${Dropdown_digitalContact_current}                  id=digitalContact_0
${Dropdown_physicalContact_current}                 id=physicalContact_0
${Textfield_contactSuggestion_current}               id=contactSuggestion_0


#Search customer current
${Button_clear_customer_current}                    ล้างข้อมูล
${Button_search_customer_current}                   ค้นหา 
${Button_expand_customer_current}                   /html/body/div/div/div/main/div/div[2]/div/div/main/form[2]/div/div[6]/div/div[1]/button
${Button_Export_ Excel}                             Export Excel

