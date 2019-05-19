*** Settings ***
#Library     REST    https://jsonplaceholder.typicode.com
Library     RequestsLibrary

*** Variables ***

*** Test Cases ***
Get all Users
    #using RequestLibrary
    #Create Session  sess   https://jsonplaceholder.typicode.com
    create session  sess  http://localhost:8085/student
    #${resp}=  Get Request   sess    /users/1
    ${resp}=  Get Request   sess    /list
    should be equal as strings  ${resp.status_code}  200
    log to console  ${resp.status_code}
    log to console  ${resp.content}


    #using REST library
    #GET     /users/1
    #Output  response body address   file_path=${CURDIR}/user_1.json
    #Output  response body  file_path=${CURDIR}/user_2.json
    #Output

#POST to create a new user
    #POST    /users      ${CURDIR}/user_2.json



*** Keywords ***
