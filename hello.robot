*** Settings ***
Library  Selenium2Library

*** Variables ***
${FIRSTNAME}  Angkarn
*** Test Cases ***
Hello Google Search Pizza
  Open Browser  http://www.google.co.th  chrome
  Input Text  lst-ib  Pizza
  Click Button  _fZl
  Wait Until Page Contains  ใหม่ พิซซ่าซอสเซจ ดีไลท์ - ไส้กรอกหอมเครื่องเทศและสับปะรด
  [Teardown]  Close Browser

Google Search KFC
  Open Browser  http://www.google.co.th  chrome
  Input Text  lst-ib  KFC
  Click Button  _fZl
  Wait Until Page Contains  kfc.co.th - KFC
  [Teardown]  Close Browser
*** Keywords ***