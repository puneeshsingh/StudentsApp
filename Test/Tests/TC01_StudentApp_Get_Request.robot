*** Settings ***
Library  RequestsLibrary
Library  JSONSchemaLibrary

*** Variables ***

*** Test Cases ***
Get All Student Details
    Create Session  student     http://localhost:8085/student
    ${resp}=    get request  student    /list
    should be equal as strings  ${resp.status_code}     200
    log to console  ${resp.content}

Get Specific student from Student App
    Create Session  student1     http://localhost:8085
    ${resp}=    get request  student1    /student/100
    should be equal as strings  ${resp.json()['firstName']}     Oscar

*** Keywords ***
