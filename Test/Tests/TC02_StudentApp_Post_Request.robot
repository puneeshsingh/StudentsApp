*** Settings ***
Library  RequestsLibrary
Library  Collections
Library  String

*** Variables ***

*** Test Cases ***
Create a new Student in Student App
    create session  ses1    http://localhost:8085
    ${list}=    create list  RPA    Testing     Automation
    &{student}=  create dictionary  firstName=Puneesh8  lastName=Singh  email=test8@gmail.com  programme=Automation   courses=${list}
    &{header}=  create dictionary  Content-Type=application/json    charset=UTF-8
    ${resp}=    POST REQUEST  ses1  /student  data=${student}   headers=${header}
    should be equal as strings  ${resp.status_code}  201
    should be equal as strings  ${resp.json()['msg']}   Student added


*** Keywords ***


