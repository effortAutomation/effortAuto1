*** Settings ***
Documentation    This is Done By Nedariya Afsar
Library   Selenium2Library
Library  DateTime
Library  String

*** Variables ***
${getCurrentDate}
${listItemByUser}
*** Keywords ***
Currency_Drag_And_Drop
    [Arguments]  ${isRequired}
    log to console  Currency_Drag_And_Drop
    drag and drop  //span[text()='Currency']   //*[@id='formFields-0']/li
    sleep  1s
    ${INPUT}=     get element attribute  //input[@value = 'Currency']@id
    ${GetSTring1} =  Remove String Using Regexp	${INPUT}    formFieldSpecs
    ${GetSTring2} =     Remove String Using Regexp  ${GetSTring1}   [0-9]
    ${GetSTring3} =     remove string using regexp  ${GetSTring1}  ${GetSTring2}
    run keyword if  '${isRequired}' == 'No'
    ...     click element  //*[@id="formFieldSpecs${GetSTring3}_isRequired"]
    log many  DONE
Date_Drag_And_Drop
    [Arguments]  ${isRequired}
    log to console  Date_Drag_And_Drop
    drag and drop  //span[text()='Date']    //*[@id='formFields-0']/li
    sleep  1s
    ${INPUT}=     get element attribute  //input[@value = 'Date']@id
    ${GetSTring1} =  Remove String Using Regexp	${INPUT}    formFieldSpecs
    ${GetSTring2} =     Remove String Using Regexp  ${GetSTring1}   [0-9]
    ${GetSTring3} =     remove string using regexp  ${GetSTring1}  ${GetSTring2}
    run keyword if  '${isRequired}' == 'No'
    ...     click element  //*[@id="formFieldSpecs${GetSTring3}_isRequired"]
DateTime_Drag_And_Drop
    [Arguments]  ${isRequired}
    log to console  DateTime_Drag_And_Drop
    drag and drop  //span[text()='DateTime']    //*[@id='formFields-0']/li
    sleep  1s
    ${INPUT}=     get element attribute  //input[@value = 'DateTime']@id
    ${GetSTring1} =  Remove String Using Regexp	${INPUT}    formFieldSpecs
    ${GetSTring2} =     Remove String Using Regexp  ${GetSTring1}   [0-9]
    ${GetSTring3} =     remove string using regexp  ${GetSTring1}  ${GetSTring2}
    run keyword if  '${isRequired}' == 'No'
    ...     click element  //*[@id="formFieldSpecs${GetSTring3}_isRequired"]
Number_Drag_And_Drop
    [Arguments]  ${isRequired}
    log to console  Number_Drag_And_Drop
    drag and drop  //span[text()='Number']    //*[@id='formFields-0']/li
    sleep  1s
    ${INPUT}=     get element attribute  //input[@value = 'Number']@id
    ${GetSTring1} =  Remove String Using Regexp	${INPUT}    formFieldSpecs
    ${GetSTring2} =     Remove String Using Regexp  ${GetSTring1}   [0-9]
    ${GetSTring3} =     remove string using regexp  ${GetSTring1}  ${GetSTring2}
    run keyword if  '${isRequired}' == 'No'
    ...     click element  //*[@id="formFieldSpecs${GetSTring3}_isRequired"]
Text_Drag_And_Drop
    [Arguments]  ${isRequired}
    log to console  Text_Drag_And_Drop
    drag and drop  //span[text()='Text']    //*[@id='formFields-0']/li
    sleep  1s
    ${INPUT}=     get element attribute  //input[@value = 'Text']@id
    ${GetSTring1} =  Remove String Using Regexp	${INPUT}    formFieldSpecs
    ${GetSTring2} =     Remove String Using Regexp  ${GetSTring1}   [0-9]
    ${GetSTring3} =     remove string using regexp  ${GetSTring1}  ${GetSTring2}
    run keyword if  '${isRequired}' == 'No'
    ...     click element  //*[@id="formFieldSpecs${GetSTring3}_isRequired"]
Time_Drag_And_Drop
    [Arguments]  ${isRequired}
    log to console  Time_Drag_And_Drop
    drag and drop  //span[text()='Time']    //*[@id='formFields-0']/li
    sleep  1s
    ${INPUT}=     get element attribute  //input[@value = 'Time']@id
    ${GetSTring1} =  Remove String Using Regexp	${INPUT}    formFieldSpecs
    ${GetSTring2} =     Remove String Using Regexp  ${GetSTring1}   [0-9]
    ${GetSTring3} =     remove string using regexp  ${GetSTring1}  ${GetSTring2}
    run keyword if  '${isRequired}' == 'No'
    ...     click element  //*[@id="formFieldSpecs${GetSTring3}_isRequired"]
Email_Drag_And_Drop
    [Arguments]  ${isRequired}
    log to console  Email_Drag_And_Drop
    drag and drop  //span[text()='Email']    //*[@id='formFields-0']/li
    sleep  1s
    ${INPUT}=     get element attribute  //input[@value = 'Email']@id
    ${GetSTring1} =  Remove String Using Regexp	${INPUT}    formFieldSpecs
    ${GetSTring2} =     Remove String Using Regexp  ${GetSTring1}   [0-9]
    ${GetSTring3} =     remove string using regexp  ${GetSTring1}  ${GetSTring2}
    run keyword if  '${isRequired}' == 'No'
    ...     click element  //*[@id="formFieldSpecs${GetSTring3}_isRequired"]
Location_Drag_And_Drop
    [Arguments]  ${isRequired}
    log to console  Location_Drag_And_Drop
    drag and drop  //span[text()='Location']    //*[@id='formFields-0']/li
    sleep  1s
    ${INPUT}=     get element attribute  //input[@value = 'Location']@id
    ${GetSTring1} =  Remove String Using Regexp	${INPUT}    formFieldSpecs
    ${GetSTring2} =     Remove String Using Regexp  ${GetSTring1}   [0-9]
    ${GetSTring3} =     remove string using regexp  ${GetSTring1}  ${GetSTring2}
    run keyword if  '${isRequired}' == 'No'
    ...     click element  //*[@id="formFieldSpecs${GetSTring3}_isRequired"]
Phone_Drag_And_Drop
    [Arguments]  ${isRequired}
    log to console  Phone_Drag_And_Drop
    drag and drop  //span[text()='Phone']    //*[@id='formFields-0']/li
    sleep  1s
    ${INPUT}=     get element attribute  //input[@value = 'Phone']@id
    ${GetSTring1} =  Remove String Using Regexp	${INPUT}    formFieldSpecs
    ${GetSTring2} =     Remove String Using Regexp  ${GetSTring1}   [0-9]
    ${GetSTring3} =     remove string using regexp  ${GetSTring1}  ${GetSTring2}
    run keyword if  '${isRequired}' == 'No'
    ...     click element  //*[@id="formFieldSpecs${GetSTring3}_isRequired"]
URL_Drag_And_Drop
    [Arguments]  ${isRequired}
    log to console  URL_Drag_And_Drop
    drag and drop  //span[text()='URL']    //*[@id='formFields-0']/li
    sleep  1s
    ${INPUT}=     get element attribute  //input[@value = 'URL']@id
    ${GetSTring1} =  Remove String Using Regexp	${INPUT}    formFieldSpecs
    ${GetSTring2} =     Remove String Using Regexp  ${GetSTring1}   [0-9]
    ${GetSTring3} =     remove string using regexp  ${GetSTring1}  ${GetSTring2}
    run keyword if  '${isRequired}' == 'No'
    ...     click element  //*[@id="formFieldSpecs${GetSTring3}_isRequired"]
Audio_Drag_And_Drop
    [Arguments]  ${isRequired}
    log to console  Audio_Drag_And_Drop
    drag and drop  //span[text()='Audio']    //*[@id='formFields-0']/li
    sleep  1s
    ${INPUT}=     get element attribute  //input[@value = 'Audio']@id
    ${GetSTring1} =  Remove String Using Regexp	${INPUT}    formFieldSpecs
    ${GetSTring2} =     Remove String Using Regexp  ${GetSTring1}   [0-9]
    ${GetSTring3} =     remove string using regexp  ${GetSTring1}  ${GetSTring2}
    run keyword if  '${isRequired}' == 'No'
    ...     click element  //*[@id="formFieldSpecs${GetSTring3}_isRequired"]
Document_Drag_And_Drop
    [Arguments]  ${isRequired}
    log to console  Document_Drag_And_Drop
    drag and drop  //span[text()='Document']    //*[@id='formFields-0']/li
    sleep  1s
    ${INPUT}=     get element attribute  //input[@value = 'Document']@id
    ${GetSTring1} =  Remove String Using Regexp	${INPUT}    formFieldSpecs
    ${GetSTring2} =     Remove String Using Regexp  ${GetSTring1}   [0-9]
    ${GetSTring3} =     remove string using regexp  ${GetSTring1}  ${GetSTring2}
    run keyword if  '${isRequired}' == 'No'
    ...     click element  //*[@id="formFieldSpecs${GetSTring3}_isRequired"]
Image_Drag_And_Drop
    [Arguments]  ${isRequired}
    log to console  Image_Drag_And_Drop
    drag and drop  //span[text()='Image']    //*[@id='formFields-0']/li
    sleep  1s
    ${INPUT}=     get element attribute  //input[@value = 'Image']@id
    ${GetSTring1} =  Remove String Using Regexp	${INPUT}    formFieldSpecs
    ${GetSTring2} =     Remove String Using Regexp  ${GetSTring1}   [0-9]
    ${GetSTring3} =     remove string using regexp  ${GetSTring1}  ${GetSTring2}
    run keyword if  '${isRequired}' == 'No'
    ...     click element  //*[@id="formFieldSpecs${GetSTring3}_isRequired"]
Signature_Drag_And_Drop
    [Arguments]  ${isRequired}
    log to console  Signature_Drag_And_Drop
    drag and drop  //span[text()='Signature']    //*[@id='formFields-0']/li
    sleep  1s
    ${INPUT}=     get element attribute  //input[@value = 'Signature']@id
    ${GetSTring1} =  Remove String Using Regexp	${INPUT}    formFieldSpecs
    ${GetSTring2} =     Remove String Using Regexp  ${GetSTring1}   [0-9]
    ${GetSTring3} =     remove string using regexp  ${GetSTring1}  ${GetSTring2}
    run keyword if  '${isRequired}' == 'No'
    ...     click element  //*[@id="formFieldSpecs${GetSTring3}_isRequired"]
Video_Drag_And_Drop
    [Arguments]  ${isRequired}
    log to console  Video_Drag_And_Drop
    drag and drop  //span[text()='Video']    //*[@id='formFields-0']/li
    sleep  1s
    ${INPUT}=     get element attribute  //input[@value = 'Video']@id
    ${GetSTring1} =  Remove String Using Regexp	${INPUT}    formFieldSpecs
    ${GetSTring2} =     Remove String Using Regexp  ${GetSTring1}   [0-9]
    ${GetSTring3} =     remove string using regexp  ${GetSTring1}  ${GetSTring2}
    run keyword if  '${isRequired}' == 'No'
    ...     click element  //*[@id="formFieldSpecs${GetSTring3}_isRequired"]
Country_Drag_And_Drop
    [Arguments]  ${isRequired}
    log to console  Country_Drag_And_Drop
    drag and drop  //span[text()='Country']    //*[@id='formFields-0']/li
    sleep  1s
    ${INPUT}=     get element attribute  //input[@value = 'Country']@id
    ${GetSTring1} =  Remove String Using Regexp	${INPUT}    formFieldSpecs
    ${GetSTring2} =     Remove String Using Regexp  ${GetSTring1}   [0-9]
    ${GetSTring3} =     remove string using regexp  ${GetSTring1}  ${GetSTring2}
    run keyword if  '${isRequired}' == 'No'
    ...     click element  //*[@id="formFieldSpecs${GetSTring3}_isRequired"]
Custom Entity_Drag_And_Drop
    [Arguments]  ${isRequired}
    log to console  Custom Entity_Drag_And_Drop
    drag and drop  //span[text()='Custom Entity']    //*[@id='formFields-0']/li
    sleep  1s
    ${INPUT}=     get element attribute  //input[@value = 'Custom Entity']@id
    ${GetSTring1} =  Remove String Using Regexp	${INPUT}    formFieldSpecs
    ${GetSTring2} =     Remove String Using Regexp  ${GetSTring1}   [0-9]
    ${GetSTring3} =     remove string using regexp  ${GetSTring1}  ${GetSTring2}
    run keyword if  '${isRequired}' == 'No'
    ...     click element  //*[@id="formFieldSpecs${GetSTring3}_isRequired"]
Customer_Drag_And_Drop
    [Arguments]  ${isRequired}
    log to console  Customer_Drag_And_Drop
    drag and drop  //span[text()='Customer']    //*[@id='formFields-0']/li
    sleep  1s
    ${INPUT}=     get element attribute  //input[@value = 'Customer']@id
    ${GetSTring1} =  Remove String Using Regexp	${INPUT}    formFieldSpecs
    ${GetSTring2} =     Remove String Using Regexp  ${GetSTring1}   [0-9]
    ${GetSTring3} =     remove string using regexp  ${GetSTring1}  ${GetSTring2}
    run keyword if  '${isRequired}' == 'No'
    ...     click element  //*[@id="formFieldSpecs${GetSTring3}_isRequired"]
Customer Type_Drag_And_Drop
    [Arguments]  ${isRequired}
    log to console  Customer Type_Drag_And_Drop
    drag and drop  //span[text()='Customer Type']    //*[@id='formFields-0']/li
    sleep  1s
    ${INPUT}=     get element attribute  //input[@value = 'Customer Type']@id
    ${GetSTring1} =  Remove String Using Regexp	${INPUT}    formFieldSpecs
    ${GetSTring2} =     Remove String Using Regexp  ${GetSTring1}   [0-9]
    ${GetSTring3} =     remove string using regexp  ${GetSTring1}  ${GetSTring2}
    run keyword if  '${isRequired}' == 'No'
    ...     click element  //*[@id="formFieldSpecs${GetSTring3}_isRequired"]
Employee_Drag_And_Drop
    [Arguments]  ${isRequired}
    log to console  Employee_Drag_And_Drop
    drag and drop  //span[text()='Employee']    //*[@id='formFields-0']/li
    sleep  1s
    ${INPUT}=     get element attribute  //input[@value = 'Employee']@id
    ${GetSTring1} =  Remove String Using Regexp	${INPUT}    formFieldSpecs
    ${GetSTring2} =     Remove String Using Regexp  ${GetSTring1}   [0-9]
    ${GetSTring3} =     remove string using regexp  ${GetSTring1}  ${GetSTring2}
    run keyword if  '${isRequired}' == 'No'
    ...     click element  //*[@id="formFieldSpecs${GetSTring3}_isRequired"]
Form_Drag_And_Drop
    [Arguments]  ${isRequired}
    log to console  Form_Drag_And_Drop
    drag and drop  //span[text()='Form']    //*[@id='formFields-0']/li
    sleep  1s
    ${INPUT}=     get element attribute  //input[@value = 'Form']@id
    ${GetSTring1} =  Remove String Using Regexp	${INPUT}    formFieldSpecs
    ${GetSTring2} =     Remove String Using Regexp  ${GetSTring1}   [0-9]
    ${GetSTring3} =     remove string using regexp  ${GetSTring1}  ${GetSTring2}
    run keyword if  '${isRequired}' == 'No'
    ...     click element  //*[@id="formFieldSpecs${GetSTring3}_isRequired"]
Multi Pick Customer_Drag_And_Drop
    [Arguments]  ${isRequired}
    log to console  Multi Pick Customer_Drag_And_Drop
    drag and drop  //span[text()='Multi Pick Customer']    //*[@id='formFields-0']/li
    sleep  1s
    ${INPUT}=     get element attribute  //input[@value = 'Multi Pick Customer']@id
    ${GetSTring1} =  Remove String Using Regexp	${INPUT}    formFieldSpecs
    ${GetSTring2} =     Remove String Using Regexp  ${GetSTring1}   [0-9]
    ${GetSTring3} =     remove string using regexp  ${GetSTring1}  ${GetSTring2}
    run keyword if  '${isRequired}' == 'No'
    ...     click element  //*[@id="formFieldSpecs${GetSTring3}_isRequired"]
Territory_Drag_And_Drop
    [Arguments]  ${isRequired}
    log to console  Territory_Drag_And_Drop
    drag and drop  //span[text()='Territory']    //*[@id='formFields-0']/li
    sleep  1s
    ${INPUT}=     get element attribute  //input[@value = 'Territory']@id
    ${GetSTring1} =  Remove String Using Regexp	${INPUT}    formFieldSpecs
    ${GetSTring2} =     Remove String Using Regexp  ${GetSTring1}   [0-9]
    ${GetSTring3} =     remove string using regexp  ${GetSTring1}  ${GetSTring2}
    run keyword if  '${isRequired}' == 'No'
    ...     click element  //*[@id="formFieldSpecs${GetSTring3}_isRequired"]
YesOrNo_Drag_And_Drop
    [Arguments]  ${isRequired}
    log to console  Yes/No_Drag_And_Drop
    drag and drop  //span[text()='Yes/No']    //*[@id='formFields-0']/li
    sleep  1s
    ${INPUT}=     get element attribute  //input[@value = 'YesOrNo']@id
    ${GetSTring1} =  Remove String Using Regexp	${INPUT}    formFieldSpecs
    ${GetSTring2} =     Remove String Using Regexp  ${GetSTring1}   [0-9]
    ${GetSTring3} =     remove string using regexp  ${GetSTring1}  ${GetSTring2}
    input text  //*[@id="formFieldSpecs${GetSTring3}_fieldLabel"]   YesOrNo   # change name for  Yes\No Label to YesOrNo \
    run keyword if  '${isRequired}' == 'No'
    ...    click element  //*[@id="formFieldSpecs${GetSTring3}_isRequired"]
List_Drag_And_Drop
    [Arguments]  ${isRequired}
    log to console  List_Drag_And_Drop
    drag and drop  //span[text()='List']    //*[@id='formFields-0']/li
    sleep  1s
    ${INPUT}=     get element attribute  //input[@value = 'List']@id
    ${GetSTring1} =  Remove String Using Regexp	${INPUT}    formFieldSpecs
    ${GetSTring2} =     Remove String Using Regexp  ${GetSTring1}   [0-9]
    ${GetSTring3} =     remove string using regexp  ${GetSTring1}  ${GetSTring2}
    run keyword if  '${isRequired}' == 'No'
    ...     click element  //*[@id="formFieldSpecs${GetSTring3}_isRequired"]
Multi Pick List_Drag_And_Drop
    [Arguments]  ${isRequired}
    log to console  Multi Pick List_Drag_And_Drop
    drag and drop  //span[text()='Multi Pick List']    //*[@id='formFields-0']/li
    sleep  1s
    ${INPUT}=     get element attribute  //input[@value = 'Multi Pick List']@id
    ${GetSTring1} =  Remove String Using Regexp	${INPUT}    formFieldSpecs
    ${GetSTring2} =     Remove String Using Regexp  ${GetSTring1}   [0-9]
    ${GetSTring3} =     remove string using regexp  ${GetSTring1}  ${GetSTring2}
    run keyword if  '${isRequired}' == 'No'
    ...     click element  //*[@id="formFieldSpecs${GetSTring3}_isRequired"]

Multi-select List_Drag_And_Drop
    [Arguments]     ${isRequired}   @{items}
    log to console  Multi-select List_Drag_And_Drop
    drag and drop  //span[text()='Multi-select List']    //*[@id='formFields-0']/li
    sleep  1s
    ${INPUT}=     get element attribute  //input[@value = 'Multi-select List']@id
    ${GetSTring1} =  Remove String Using Regexp	${INPUT}    formFieldSpecs
    ${GetSTring2} =     Remove String Using Regexp  ${GetSTring1}   [0-9]
    ${GetSTring3} =     remove string using regexp  ${GetSTring1}  ${GetSTring2}
    ${itemsLen}=    Get Length	      ${items}
    run keyword if  '${isRequired}' == 'No'
    ...     click element  //*[@id="formFieldSpecs${GetSTring3}_isRequired"]
    :FOR    ${index}     IN RANGE    0    ${itemsLen}
    \   ${tempitem}=  set variable    @{items}[${index}]
    \   ${listItemByUser}=  set variable    ${listItemByUser}${tempitem}${\n}
    log many  ${listItemByUser}
    input text  //*[@id='formFieldSpecs${GetSTring3}_fieldType_value']      ${listItemByUser}
Single-select List_Drag_And_Drop
    [Arguments]     ${isRequired}    @{items}
    log to console  Single-select List_Drag_And_Drop
    drag and drop  //span[text()='Single-select List']    //*[@id='formFields-0']/li
    sleep  1s
    ${INPUT}=     get element attribute  //input[@value = 'Single-select List']@id
    ${GetSTring1} =  Remove String Using Regexp	${INPUT}    formFieldSpecs
    ${GetSTring2} =     Remove String Using Regexp  ${GetSTring1}   [0-9]
    ${GetSTring3} =     remove string using regexp  ${GetSTring1}  ${GetSTring2}
    ${itemsLen}=    Get Length	      ${items}
    run keyword if  '${isRequired}' == 'No'
    ...     click element  //*[@id="formFieldSpecs${GetSTring3}_isRequired"]
    :FOR    ${index}     IN RANGE    0    ${itemsLen}
    \   ${tempitem}=  set variable    @{items}[${index}]
    \   ${listItemByUser}=  set variable    ${listItemByUser}${tempitem}${\n}
    log many  ${listItemByUser}
    input text  //*[@id='formFieldSpecs${GetSTring3}_fieldType_value']      ${listItemByUser}
AutoGenerate_Drag_And_Drop
    log to console  AutoGenerate_Drag_And_Drop
    drag and drop  //span[text()='AutoGenerate']    //*[@id='formFields-0']/li
    sleep  1s
Label_Drag_And_Drop
    log to console  Label_Drag_And_Drop
    drag and drop  //span[text()='Label']    //*[@id='formFields-0']/li
    sleep  1s
Timespan_Drag_And_Drop
    log to console  Timespan_Drag_And_Drop
    drag and drop  //span[text()='Timespan']    //*[@id='formFields-0']/li
    sleep  1s
Section_Drag_And_Drop
    log to console  Section_Drag_And_Drop
    drag and drop  //span[text()='Section']    //*[@id='formFields-0']/li
    sleep  1s
Fields Group_Drag_And_Drop
    log to console  Fields Group_Drag_And_Drop
    drag and drop  //span[text()='Fields Group']    //*[@id='formFields-0']/li
    sleep  1s

