*** Settings ***
Documentation    Suite description
Library   Selenium2Library


*** Variables ***
${FormName}

*** Keywords ***
Go_To_Create_Form
    log to console  Going to Create Form
    click element  //*[@id="forms"]/a
    click element  //*[@id="expandDivElement"]/span/p
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
    click element  //*[@id='save1']
    dismiss alert
    page should contain element  //*[@id="formSpecModify"]/a/span[2]