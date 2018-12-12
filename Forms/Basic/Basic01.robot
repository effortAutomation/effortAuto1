*** Settings ***
Documentation    Suite description
Library   Selenium2Library


*** Variables ***
${FormName}

*** Keywords ***
user_logout
    click element  //a[@class='dropdown-toggle']
    click element  //a[contains(text(),'Logout')]
    close browser
Go_to_edit_form
    [Arguments]  ${FormNameByUser}
    click element  //*[@id="forms"]/a
    click element  //a[contains(text(),'${FormNameByUser}')]
    click element  //a[contains(text(),'Edit Form Design')]
Go_To_Create_Form
    click element  //*[@id="forms"]/a
    click element  //*[@id="configure_formspec_body"]/div[2]/ul/li[1]/span[2]/a
Set_Form_Name
    [Arguments]  ${FormNameByUser}
    log to console  Setting Form Name
    ${getCurrentDate}=  Get Current Date
    ${FormName}=    set variable  ${FormNameByUser}${getCurrentDate}
    set suite variable  ${FormName}
    log many  ${FormName}
    input text    //*[@id='formTitle']      ${FormName}
    [Return]  ${FormName}
change_pulish_fiedl_Value
    [Arguments]  ${arrgu}
    run keyword if  '${arrgu}' == 'No'
    ...     log many  No
            ${fiedlValue}=  set variable  Yes
    run keyword if  '${arrgu}' == 'Yes'
    ...     log many  Yes
            ${fiedlValue}=  set variable  No
    click element  //*[@id="formSpec_body"]/div[2]/div[2]/div/div[3]/div/div/div/label[text()='${fiedlValue}']
change_Make_Form_Public
    [Arguments]  ${arrgu}
    run keyword if  '${arrgu}' == 'No'
    ...     log many  No
            ${fiedlValue}=  set variable  Yes
    run keyword if  '${arrgu}' == 'Yes'
    ...     log many  Yes
            ${fiedlValue}=  set variable  No
    click element   //*[@id='publicLinkForm']/div/div/div/label[text()='${fiedlValue}']
change_Can submit online only
    [Arguments]  ${arrgu}
    run keyword if  '${arrgu}' == 'No'
    ...     log many  No
            ${fiedlValue}=  set variable  Yes
    run keyword if  '${arrgu}' == 'Yes'
    ...     log many  Yes
            ${fiedlValue}=  set variable  No
    click element  //*[@id='onlineForm']/div/div/div/label[text()='${fiedlValue}']
Click_On_form_Save
    [Arguments]  ${FormNameByUser}
    click element  //*[@id='save1']
    dismiss alert
    sleep  3s
    page should contain  ${FormNameByUser}