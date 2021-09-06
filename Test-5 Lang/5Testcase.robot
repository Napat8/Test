*** Settings ***

Library   SeleniumLibrary
Library   String

Suite Setup   Open Web Browser 
Suite Teardown   Closed

Resource   ${ar_Lang}/languages.robot

*** Variables ***

${url}   https://www.google.co.th/?hl
${Browsergc}   gc
${Browserff}   ff
${ENTER}   ENTER
#Xpath SeleniumLibrary link1
${txtinput}   xpath=//Input[@class="gLFyf gsfi"]


*** Keywords ***

Open Web Browser
   Open Browser   ${url}   ${Browsergc}
   Maximize Browser Window

Search
   Input Text   ${txtinput}   ${Seleniume}
   Press Keys   ${txtinput}   ${ENTER}
   Capture Page Screenshot

Closed
   Close Browser


*** Test Cases ***
Test2LANG
   Search
   Log To Console   ${Seleniume}

