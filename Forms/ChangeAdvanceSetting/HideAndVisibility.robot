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
check_field_invisibity_status
    element should not be visible  //div[@id='s2id_fields0_fieldValue']//a[@class='select2-choice']
    element should not be visible  //select[@id='fields1_fieldValue']
    element should not be visible  //select[@id='fields2_fieldValue']
    element should not be visible  //select[@id='fields3_fieldValue']
    element should not be visible  //div[@id='s2id_fields4_fieldValue']//a[@class='select2-choice']
    element should not be visible  //div[@id='s2id_fields5_fieldValue']//a[@class='select2-choice']
    element should not be visible  //select[@id='fields6_fieldValue']
    element should not be visible  //select[@id='fields7_fieldValue']
    element should not be visible  //select[@id='fields8_fieldValue']
    element should not be visible  //select[@id='fields9_fieldValue']
    element should not be visible  //select[@id='fields10_fieldValue']
    element should not be visible  //div[@id='s2id_fields11_fieldValue']//a[@class='select2-choice']
    element should not be visible  //input[@id='fields12_file']
    element should not be visible  //input[@id='fields13_file']
    element should not be visible  //input[@id='fields14_file']
    element should not be visible  //input[@id='fields15_file']
    element should not be visible  //input[@id='fields16_file']
    element should not be visible  //input[@id='fields17_fieldValue']
    element should not be visible  //input[@id='fields19_fieldValue1']
    element should not be visible  //input[@id='fields19_fieldValue2']
    element should not be visible  //input[@id='fields20_fieldValue']
    element should not be visible  //input[@id='fields21_fieldValue']
    element should not be visible  //input[@id='fields22_fieldValue']
    element should not be visible  //input[@id='fields23_fieldValue']
    element should not be visible  //input[@id='fields24_fieldValueDateTime']
    element should not be visible  //input[@id='fields25_fieldValue']
    element should not be visible  //input[@id='fields26_fieldValue']
check_field_visibity_status
    element should be visible  //div[@id='s2id_fields0_fieldValue']//a[@class='select2-choice']
    element should be visible  //select[@id='fields1_fieldValue']
    element should be visible  //select[@id='fields2_fieldValue']
    element should be visible  //select[@id='fields3_fieldValue']
    element should be visible  //div[@id='s2id_fields4_fieldValue']//a[@class='select2-choice']
    element should be visible  //div[@id='s2id_fields5_fieldValue']//a[@class='select2-choice']
    element should be visible  //select[@id='fields6_fieldValue']
    element should be visible  //select[@id='fields7_fieldValue']
    element should be visible  //select[@id='fields8_fieldValue']
    element should be visible  //select[@id='fields9_fieldValue']
    element should be visible  //select[@id='fields10_fieldValue']
    element should be visible  //div[@id='s2id_fields11_fieldValue']//a[@class='select2-choice']
    element should be visible  //input[@id='fields12_file']
    element should be visible  //input[@id='fields13_file']
    element should be visible  //input[@id='fields14_file']
    element should be visible  //input[@id='fields15_file']
    element should be visible  //input[@id='fields16_file']
    element should be visible  //input[@id='fields17_fieldValue']
    element should be visible  //input[@id='fields19_fieldValue1']
    element should be visible  //input[@id='fields19_fieldValue2']
    element should be visible  //input[@id='fields20_fieldValue']
    element should be visible  //input[@id='fields21_fieldValue']
    element should be visible  //input[@id='fields22_fieldValue']
    element should be visible  //input[@id='fields23_fieldValue']
    element should be visible  //input[@id='fields24_fieldValueDateTime']
    element should be visible  //input[@id='fields25_fieldValue']
    element should be visible  //input[@id='fields26_fieldValue']
