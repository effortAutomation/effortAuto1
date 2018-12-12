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
${FormNameByUser}   ByAfsar2018-12-11 19:02:48.618
${invisibleUserName}    Test Employee
${invisibleEmpGroupname}     InvGroup
*** Test Cases ***
#Open_Browser
#    open browser  ${BaseUrl}/opp/x?username=${rootLoginEmail}  chrome
#    maximize browser window
#    click element  //*[@id="manageFields"]/div[1]/span/a
#create emp group
#    log to console  going to create emp group
#    ${invisibleEmpGroupname}=  Create_emp_group  ${invisibleEmpGroupname}  ${invisibleUserName}
#    set suite variable  ${invisibleEmpGroupname}
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
#    single-select list_drag_and_drop  No  a  b c  d  e  f
#set invisibility
#    sleep  5s
#    click_On_Advanced_Settings  Currency    Currency
#    Make_InVisibility_Base_On_Emp_Group   ${invisibleEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Territory    Territory
#    Make_InVisibility_Base_On_Emp_Group   ${invisibleEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Customer    Customer
#    Make_InVisibility_Base_On_Emp_Group   ${invisibleEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Date    Date
#    make_invisibility_base_on_emp_group  ${invisibleEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Text   Text
#    make_invisibility_base_on_emp_group  ${invisibleEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  DateTime   DateTime
#    make_invisibility_base_on_emp_group  ${invisibleEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Number   Number
#    make_invisibility_base_on_emp_group  ${invisibleEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Time   Time
#    make_invisibility_base_on_emp_group  ${invisibleEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Email   Email
#    make_invisibility_base_on_emp_group  ${invisibleEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Location    Location
#    make_invisibility_base_on_emp_group  ${invisibleEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Phone   Phone
#    make_invisibility_base_on_emp_group  ${invisibleEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  URL   URL
#    make_invisibility_base_on_emp_group  ${invisibleEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Audio   Audio
#    make_invisibility_base_on_emp_group  ${invisibleEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Document   Document
#    make_invisibility_base_on_emp_group  ${invisibleEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Image   Image
#    make_invisibility_base_on_emp_group  ${invisibleEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Signature   Signature
#    make_invisibility_base_on_emp_group  ${invisibleEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Video   Video
#    make_invisibility_base_on_emp_group  ${invisibleEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Country   Country
#    make_invisibility_base_on_emp_group  ${invisibleEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Custom Entity   Custom Entity
#    make_invisibility_base_on_emp_group  ${invisibleEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Employee   Employee
#    make_invisibility_base_on_emp_group  ${invisibleEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Form   Form
#    make_invisibility_base_on_emp_group  ${invisibleEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Multi Pick Customer   Multi Pick Customer
#    make_invisibility_base_on_emp_group  ${invisibleEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  YesOrNo   YesOrNo
#    make_invisibility_base_on_emp_group  ${invisibleEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  List   List
#    make_invisibility_base_on_emp_group  ${invisibleEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Multi Pick List   Multi Pick List
#    make_invisibility_base_on_emp_group  ${invisibleEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Multi-select List   Multi-select List
#    make_invisibility_base_on_emp_group  ${invisibleEmpGroupname}
#    ok_Advance_Setting
#    click_On_Advanced_Settings  Single-select List   Single-select List
#    make_invisibility_base_on_emp_group  ${invisibleEmpGroupname}
#    ok_Advance_Setting
#
#click_on_save
#    log many  ${FormNameByUser}
#    Click_On_form_Save   ${FormNameByUser}
#logout for configure user
#    user_logout
#login web for invisibility for invisible fields
#    open browser  ${BaseUrl}/opp/x?username=${secondUserEmail}  chrome
#    maximize browser window
#    click element  //a[contains(text(),'Web App')]
#check invisibility for invisible fields
#    go_to_add_form  ${FormNameByUser}
#    check_field_invisibity_status
#logout for invisible user
#    user_logout
#login web for visibility for invisible fields
#    open browser  ${BaseUrl}/opp/x?username=${rootLoginEmail}  chrome
#    maximize browser window
#    click element  //a[contains(text(),'Web App')]
#check visibility for invisible fields
#    go_to_add_form  ${FormNameByUser}
#    check_field_visibity_status
#logout for visible user
#    user_logout
#checking for visibility code

Open_Browser
    open browser  ${BaseUrl}/opp/x?username=${rootLoginEmail}  chrome
    maximize browser window
    click element  //*[@id="manageFields"]/div[1]/span/a
go_to_edit_form_
    go_to_edit_form   ${FormNameByUser}
set visibility
    sleep  5s
    click_On_Advanced_Settings  Currency    Currency
    make_visibility_base_on_emp_group
    ok_Advance_Setting
    click_On_Advanced_Settings  Territory    Territory
    make_visibility_base_on_emp_group
    ok_Advance_Setting
    click_On_Advanced_Settings  Customer    Customer
    make_visibility_base_on_emp_group
    ok_Advance_Setting
    click_On_Advanced_Settings  Date    Date
    make_visibility_base_on_emp_group
    ok_Advance_Setting
    click_On_Advanced_Settings  Text   Text
    make_visibility_base_on_emp_group
    ok_Advance_Setting
    click_On_Advanced_Settings  DateTime   DateTime
    make_visibility_base_on_emp_group
    ok_Advance_Setting
    click_On_Advanced_Settings  Number   Number
    make_visibility_base_on_emp_group
    ok_Advance_Setting
    click_On_Advanced_Settings  Time   Time
    make_visibility_base_on_emp_group
    ok_Advance_Setting
    click_On_Advanced_Settings  Email   Email
    make_visibility_base_on_emp_group
    ok_Advance_Setting
    click_On_Advanced_Settings  Location    Location
    make_visibility_base_on_emp_group
    ok_Advance_Setting
    click_On_Advanced_Settings  Phone   Phone
    make_visibility_base_on_emp_group
    ok_Advance_Setting
    click_On_Advanced_Settings  URL   URL
    make_visibility_base_on_emp_group
    ok_Advance_Setting
    click_On_Advanced_Settings  Audio   Audio
    make_visibility_base_on_emp_group
    ok_Advance_Setting
    click_On_Advanced_Settings  Document   Document
    make_visibility_base_on_emp_group
    ok_Advance_Setting
    click_On_Advanced_Settings  Image   Image
    make_visibility_base_on_emp_group
    ok_Advance_Setting
    click_On_Advanced_Settings  Signature   Signature
    make_visibility_base_on_emp_group
    ok_Advance_Setting
    click_On_Advanced_Settings  Video   Video
    make_visibility_base_on_emp_group
    ok_Advance_Setting
    click_On_Advanced_Settings  Country   Country
    make_visibility_base_on_emp_group
    ok_Advance_Setting
    click_On_Advanced_Settings  Custom Entity   Custom Entity
    make_visibility_base_on_emp_group
    ok_Advance_Setting
    click_On_Advanced_Settings  Employee   Employee
    make_visibility_base_on_emp_group
    ok_Advance_Setting
    click_On_Advanced_Settings  Form   Form
    make_visibility_base_on_emp_group
    ok_Advance_Setting
    click_On_Advanced_Settings  Multi Pick Customer   Multi Pick Customer
    make_visibility_base_on_emp_group
    ok_Advance_Setting
    click_On_Advanced_Settings  YesOrNo   YesOrNo
    make_visibility_base_on_emp_group
    ok_Advance_Setting
    click_On_Advanced_Settings  List   List
    make_visibility_base_on_emp_group
    ok_Advance_Setting
    click_On_Advanced_Settings  Multi Pick List   Multi Pick List
    make_visibility_base_on_emp_group
    ok_Advance_Setting
    click_On_Advanced_Settings  Multi-select List   Multi-select List
    make_visibility_base_on_emp_group
    ok_Advance_Setting
    click_On_Advanced_Settings  Single-select List   Single-select List
    make_visibility_base_on_emp_group
    ok_Advance_Setting
click_on_save
    log many  ${FormNameByUser}
    Click_On_form_Save   ${FormNameByUser}
logout for visibility
    user_logout
login web for invisibility for visible fields
    open browser  ${BaseUrl}/opp/x?username=${rootLoginEmail}  chrome
    maximize browser window
    click element  //a[contains(text(),'Web App')]
check invisibility for visible fiedls
    go_to_add_form  ${FormNameByUser}
    check_field_invisibity_status
Logout for invisible user
    user_logout
login web for visibility for visible fields
    open browser  ${BaseUrl}/opp/x?username=${secondUserEmail}  chrome
    maximize browser window
    click element  //a[contains(text(),'Web App')]
check visibility for visible fields
    go_to_add_form  ${FormNameByUser}
    check_field_visibity_status
logout for visible user
    user_logout