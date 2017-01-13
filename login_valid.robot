*** Settings ***
Library  Selenium2Library
Suite Teardown  Close All Browsers

*** Variables ***
${URL}  http://localhost:7272/
${BROWSER DRIVER}  chrome

*** Test Cases ***
Login Case Valid
  [Template]  Login Process
#---UserName---|---Password---|---Expect---#
    demo            mode        welcome.html

Login Case Invalid
  [Template]  Login Process
#---UserName---|---Password---|---Expect---#
    demo1           mode1       error.html
    454             ooio        error.html
    %lrkst          rtrpot      error.html

*** Keywords ***
Login Process
    [Arguments]  ${username}  ${password}  ${expect}
    Open Browser  ${URL}  ${BROWSER DRIVER}
    Input Text  username_field  ${username}
    Input Text  password_field  ${password}
    Click Button  login_button
    Location Should Contain  ${expect}
