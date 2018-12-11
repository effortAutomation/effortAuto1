*** Settings ***
Documentation    Suite description
Library   Selenium2Library


*** Keywords ***
go_to_add_form
    [Arguments]  ${formName}
    click element  //*[@id="forms"]/a
    click element  //p[contains(text(),'${formName}')]
    page should contain  ${formName}
    click element  //input[@id='addForms']