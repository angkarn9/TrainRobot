*** Settings ***
Library  Selenium2Library

*** Variables ***
${URL}  http://www.google.co.th
${BROWSER DRIVE}  chrome
*** Test Cases ***
Hello Google Search Pizza
  Open Browser  ${URL}  ${BROWSER DRIVE}
  Input Text  lst-ib  Pizza
  Wait Until Element Is Visible  _fZl
  Click Button  _fZl
  Wait Until Page Contains  พิซซ่า
  [Teardown]  Close Browser

Google Search KFC
  Open Browser  ${URL}  ${BROWSER DRIVE}
  Input Text  lst-ib  KFC
  Wait Until Element Is Visible  _fZl
  Click Button  _fZl
  Wait Until Page Contains  kfc.co.th - KFC
  [Teardown]  Close Browser
*** Keywords ***