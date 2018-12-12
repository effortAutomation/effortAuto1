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
${rootLoginEmail}  afsarabbas94@gmmail.com
${secondUserEmail}      mailt724@gmail.com
${FormNameByUser}   Unedit
${UneditableUserName}    Test Employee
${UneditableEmpGroupname}     Unedit2018-12-12 14:32:56.492

*** Test Cases ***
#Open_Browser
#    open browser  ${BaseUrl}/opp/x?username=${rootLoginEmail}  chrome
#    maximize browser window
#    click element  //*[@id="manageFields"]/div[1]/span/a
#create emp group
#    log to console  going to create emp group
#    ${UneditableEmpGroupname}=  Create_emp_group  ${UneditableEmpGroupname}  ${UneditableUserName}
#    set suite variable  ${UneditableEmpGroupname}
#Open create form page.
#    go_to_create_form
#    ${FormNameByUser}=   Set_Form_Name      ${FormNameByUser}
#    set suite variable  ${FormNameByUser}
#    log many  ${FormNameByUser}
#    change_pulish_fiedl_Value  yes
#drag and drop field
#    Currency_drag_and_drop  Yes
#    Date_drag_and_drop  No
#    datetime_drag_and_drop  No
#    Text_Drag_And_Drop  No
#    number_drag_and_drop  No
#    time_drag_and_drop  No
#    email_drag_and_drop  No
#    location_drag_and_drop  No
#    phone_drag_and_drop  No
#    url_drag_and_drop  No
#    audio_drag_and_drop  No
#    document_drag_and_drop  No
#    image_drag_and_drop  No
#    signature_drag_and_drop  No
#    video_drag_and_drop  No
#    country_drag_and_drop  No
#    custom entity_drag_and_drop  No
#    customer_drag_and_drop  No
#    employee_drag_and_drop  No
#    form_drag_and_drop  No
#    multi pick customer_drag_and_drop  No
#    territory_drag_and_drop  No
#    yesorno_drag_and_drop  No
#    list_drag_and_drop  No
#    multi pick list_drag_and_drop  No
#    multi-select list_drag_and_drop  No   1  2  3  4  5  6
    single-select list_drag_and_drop  No  a  b c  d  e  f
#set Uneditable
#    sleep  5s
#    click_On_Advanced_Settings  Currency    Currency
#    Make_Uneditable_base_on_Emp_group   ${UneditableEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Territory    Territory
#    Make_Uneditable_base_on_Emp_group   ${UneditableEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Customer    Customer
#    Make_Uneditable_base_on_Emp_group   ${UneditableEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Date    Date
#    Make_Uneditable_base_on_Emp_group  ${UneditableEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Text   Text
#    Make_Uneditable_base_on_Emp_group  ${UneditableEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  DateTime   DateTime
#    Make_Uneditable_base_on_Emp_group  ${UneditableEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Number   Number
#    Make_Uneditable_base_on_Emp_group  ${UneditableEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Time   Time
#    Make_Uneditable_base_on_Emp_group  ${UneditableEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Email   Email
#    Make_Uneditable_base_on_Emp_group  ${UneditableEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Location    Location
#    Make_Uneditable_base_on_Emp_group  ${UneditableEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Phone   Phone
#    Make_Uneditable_base_on_Emp_group  ${UneditableEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  URL   URL
#    Make_Uneditable_base_on_Emp_group  ${UneditableEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Audio   Audio
#    Make_Uneditable_base_on_Emp_group  ${UneditableEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Document   Document
#    Make_Uneditable_base_on_Emp_group  ${UneditableEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Image   Image
#    Make_Uneditable_base_on_Emp_group  ${UneditableEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Signature   Signature
#    Make_Uneditable_base_on_Emp_group  ${UneditableEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Video   Video
#    Make_Uneditable_base_on_Emp_group  ${UneditableEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Country   Country
#    Make_Uneditable_base_on_Emp_group  ${UneditableEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Custom Entity   Custom Entity
#    Make_Uneditable_base_on_Emp_group  ${UneditableEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Employee   Employee
#    Make_Uneditable_base_on_Emp_group  ${UneditableEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Form   Form
#    Make_Uneditable_base_on_Emp_group  ${UneditableEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Multi Pick Customer   Multi Pick Customer
#    Make_Uneditable_base_on_Emp_group  ${UneditableEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  YesOrNo   YesOrNo
#    Make_Uneditable_base_on_Emp_group  ${UneditableEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  List   List
#    Make_Uneditable_base_on_Emp_group  ${UneditableEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Multi Pick List   Multi Pick List
#    Make_Uneditable_base_on_Emp_group  ${UneditableEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Multi-select List   Multi-select List
#    Make_Uneditable_base_on_Emp_group  ${UneditableEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Single-select List   Single-select List
#    Make_Uneditable_base_on_Emp_group  ${UneditableEmpGroupname}
#    ok_Advance_Setting
#click_on_save
#    log many  ${FormNameByUser}
#    Click_On_form_Save   ${FormNameByUser}
#logout for configure user
#    user_logout
login web for uneditable for uneditable fields
    open browser  ${BaseUrl}/opp/x?username=${secondUserEmail}  chrome
    maximize browser window
    click element  //a[contains(text(),'Web App')]
check uneditable for uneditable fields
    go_to_add_form  ${FormNameByUser}
    check_field_uneditable_status
logout for uneditable user
    user_logout
login web for editable for uneditable fields
    open browser  ${BaseUrl}/opp/x?username=${rootLoginEmail}  chrome
    maximize browser window
    click element  //a[contains(text(),'Web App')]
check editable for uneditable fields
    go_to_add_form  ${FormNameByUser}
    check_field_editable_status
logout for uneditable user
    user_logout