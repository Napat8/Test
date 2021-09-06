*** Settings ***
Library   SeleniumLibrary
Library   BuiltIn

Suite Setup   Open Web Browser 
Suite Teardown   Closed


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
   [Arguments]   ${lbl}
   Input Text   ${txtinput}    ${lbl}
   Press Keys   ${txtinput}   ${ENTER}
   ${Value}=   Set Variable   ${lbl}
   [Return]   ${Value}

Closed
   Close Browser


*** Test Cases ***
Test Arguments and Return

   Search   SeleniumLibrary
