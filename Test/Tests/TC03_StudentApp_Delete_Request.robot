*** Settings ***
Library  RequestsLibrary
Library     String
Library     Collections

*** Variables ***


*** Test Cases ***
Delete a student from Student App
    [Tags]  Delete Request
    Delete a student with 108


*** Keywords ***
Delete a student with ${id}
    create session  sess    http://localhost:8085
    ${resp}=    delete request  sess    /student/${id}
    should be equal as strings  ${resp.status_code}  204


