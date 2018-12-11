*** Settings ***
Documentation    Suite description
Library   Selenium2Library


*** Variables ***
${empgroupName}

*** Keywords ***
Create_emp_group
    [Arguments]  ${empgroupName}  ${empName}
    click element  //*[@id="employees"]/a
    click element  //*[@id="empGroups"]/span[3]/a
    click element  //*[@id="addEmpGroup"]
    ${getCurrentDate}=  Get Current Date
    ${empgroupName}=  set variable  ${empgroupName}${getCurrentDate}
    input text  //*[@id="empGroupName"]  ${empgroupName}
    click element  //option[text()='${empName}']
    click element  //*[@id="dual-list-box-Employee"]/div[2]/button[2]
    click element  //*[@id="save"]
    sleep  3s
    page should contain  Saved successfully
    log many  ${empgroupName}
    [Return]  ${empgroupName}