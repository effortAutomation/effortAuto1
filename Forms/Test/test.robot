*** Settings ***
Documentation    Suite description
Library   Selenium2Library
Resource  ../DragAndDrop/DragAndDropAllDataTypeInNormalField.robot
Resource  ../Basic/Basic01.robot
Resource  ../ChangeAdvanceSetting/HideAndVisibility.robot
Resource  ../Basic/CreateEmpGroup.robot
Resource  ../Basic/addForm.robot
*** Variables ***
${BaseUrl}      https://nd.spoors.in/effortConfigure
${FormNameByUser}   ByAfsar
${invisibleUserName}    Test Employee
${invisibleEmpGroupname}     InvGroup
${FormNameByUser1}
*** Test Cases ***
Open_Browser
    open browser  https://nd.spoors.in/effortConfigure//opp/x?username=afsarabbas94@gmmail.com  chrome
    maximize browser window
    click element  //*[@id="manageFields"]/div[1]/span/a
create emp group
    ${invisibleEmpGroupname}=  Create_emp_group  ${invisibleEmpGroupname}  ${invisibleUserName}
    log many  ${invisibleEmpGroupname}
Open create form page
    go_to_create_form
    ${FormNameByUser}=   Set_Form_Name      ${FormNameByUser}
    log many  ${FormNameByUser}
    change_pulish_fiedl_Value  yes
drag and drop field
    Currency_drag_and_drop  Yes
    Date_drag_and_drop  No
    datetime_drag_and_drop  No
    Text_Drag_And_Drop  No
set invisibility
    click_On_Advanced_Settings  Currency    Currency
    Make_InVisibility_Base_On_Emp_Group   ${invisibleEmpGroupname}
    ok_Advance_Setting
    click_On_Advanced_Settings  Date    Date
    make_invisibility_base_on_emp_group  ${invisibleEmpGroupname}
    ok_Advance_Setting
    click_On_Advanced_Settings  Text   Text
    make_invisibility_base_on_emp_group  ${invisibleEmpGroupname}
    ok_Advance_Setting
click_on_save
    log many  ${FormNameByUser}
    Click_On_form_Save
login web for invisibility
    open browser  https://nd.spoors.in/effortConfigure//opp/x?username=mailt724@gmail.com  chrome
    maximize browser window
    click element  //*[@id="manageFields"]/div[1]/span/a
check invisibility
    go_to_add_form  ${FormNameByUser}
