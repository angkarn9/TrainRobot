*** Settings ***
Library  Selenium2Library
Suite Teardown  Close All Browsers

*** Variables ***
${URL}  http://www.google.co.th
${BROWSER DRIVE}  chrome
*** Test Cases ***
Search Google Foods
  [Template]    Search Google
#--------------------------------#
#- keyword -- | ---- expect  ----#
#--------------------------------# 
      Pizza       พิซซ่า
      KFC         kfc.co.th - KFC


*** Keywords ***
Search Google
  [Arguments]  ${keyword}  ${expect}
  Open Browser  ${URL}  ${BROWSER DRIVE}
  Input Text  lst-ib  ${keyword}
  Wait Until Element Is Visible  _fZl
  Click Button  _fZl
  Wait Until Page Contains  ${expect}
  #[Teardown]  Close Browser