*** Settings ***
Library  Selenium2Library
Suite Teardown  Close All Browsers

*** Variables ***
${URL}  http://localhost:7272/
${BROWSER DRIVER}  chrome

*** Test Cases ***
Login Case Valid
  [Template]  Login Process
#---UserName---|---Password---#
    demo            mode

Login Case Invalid
  [Template]  Login Process
#---UserName---|---Password---#
    demo1           mode1
    454             ooio
    %lrkst          rtrpot

*** Keywords ***
Login Process
    [Arguments]  ${USERNAME}  ${PASSWORD}
    Open Browser  ${URL}  ${BROWSER DRIVER}
    Input Text  username_field  ${USERNAME}
    Input Text  password_field  ${PASSWORD}
    Click Button  login_button
