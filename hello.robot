*** Settings ***

*** Variables ***
${FIRSTNAME}  Angkarn
*** Test Cases ***
Hello
  Log To Console      ${FIRST NAME}
  Log To Console      ${FIRST_NAME}
  Log To Console      ${FIRSTNAME}
  #Log  Aum  console=True

*** Keywords ***