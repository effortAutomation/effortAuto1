*** Settings ***
Library   Selenium2Library

*** Keywords ***
click_On_Droped_Item
    [Arguments]  ${DropedFieldName}
    log to console  Going to click on   ${DropedFieldName}
    click element  //span[contains(@class, 'label') and text() = '${DropedFieldName}']
click_On_Advanced_Settings
    [Arguments]  ${FiledOldLabel}      ${FiledNewLabel}
    click_On_Droped_Item  ${FiledNewLabel}
    ${INPUT}=     get element attribute  //input[@value = '${FiledOldLabel}']@id
    ${GetSTring1} =  Remove String Using Regexp	${INPUT}    formFieldSpecs
    ${GetSTring2} =     Remove String Using Regexp  ${GetSTring1}   [0-9]
    ${GetSTring3} =     remove string using regexp  ${GetSTring1}  ${GetSTring2}
    click element  //*[@id='formFieldSpecs${GetSTring3}_dialogPick']
Make_InVisibility_Base_On_Emp_Group
    [Arguments]  ${GroupName}
    click element  //*[@id='empgroupcheckbox']
    sleep  1s
    click element   //div[@id='dual-list-box1']//li[@title='${GroupName}']/a
    sleep  1s
ok_Advance_Setting
    click element  //*[@type='button'][@text='OK']