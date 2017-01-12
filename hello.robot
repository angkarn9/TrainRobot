*** Settings ***
Library  Selenium2Library
Suite Teardown  Close All Browsers

*** Variables ***
${URL}  http://www.google.co.th
${BROWSER DRIVE}  chrome
*** Test Cases ***
Hello Google Search Pizza
  [Tags]  pizza
  Search Google  Pizza  พิซซ่า

Google Search KFC
  [Tags]  kfc
  Search Google  KFC  kfc.co.th - KFC


*** Keywords ***
Search Google
  [Arguments]  ${keyword}  ${expect}
  Open Browser  ${URL}  ${BROWSER DRIVE}
  Input Text  lst-ib  ${keyword}
  Wait Until Element Is Visible  _fZl
  Click Button  _fZl
  Wait Until Page Contains  ${expect}
  #[Teardown]  Close Browser